.class public final enum Lcom/google/ar/core/PlaybackStatus;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/PlaybackStatus;

.field public static final enum FINISHED:Lcom/google/ar/core/PlaybackStatus;

.field public static final enum IO_ERROR:Lcom/google/ar/core/PlaybackStatus;

.field public static final enum NONE:Lcom/google/ar/core/PlaybackStatus;

.field public static final enum OK:Lcom/google/ar/core/PlaybackStatus;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/PlaybackStatus;
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    sget-object v2, Lcom/google/ar/core/PlaybackStatus;->IO_ERROR:Lcom/google/ar/core/PlaybackStatus;

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

    :goto_5
    sget-object v1, Lcom/google/ar/core/PlaybackStatus;->OK:Lcom/google/ar/core/PlaybackStatus;

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

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    sget-object v3, Lcom/google/ar/core/PlaybackStatus;->FINISHED:Lcom/google/ar/core/PlaybackStatus;

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

    :goto_8
    return-object v0

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

    nop

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

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/ar/core/PlaybackStatus;

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

    nop

    :goto_d
    const v0, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lcom/google/ar/core/PlaybackStatus;->NONE:Lcom/google/ar/core/PlaybackStatus;

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
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/PlaybackStatus;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/ar/core/PlaybackStatus;->FINISHED:Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x2

    nop

    goto/32 :goto_a

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

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/ar/core/PlaybackStatus;->NONE:Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/ar/core/PlaybackStatus;->$VALUES:[Lcom/google/ar/core/PlaybackStatus;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lcom/google/ar/core/PlaybackStatus;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/PlaybackStatus;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/PlaybackStatus;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    const-string v1, "IO_ERROR"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/PlaybackStatus;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "FINISHED"

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

    :goto_12
    const-string v1, "NONE"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Lcom/google/ar/core/PlaybackStatus;->$values()[Lcom/google/ar/core/PlaybackStatus;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/PlaybackStatus;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v0, Lcom/google/ar/core/PlaybackStatus;->IO_ERROR:Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "OK"

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

    :goto_1c
    const v0, 0x9

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1f
    sput-object v0, Lcom/google/ar/core/PlaybackStatus;->OK:Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

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

    :goto_2
    iput p3, p0, Lcom/google/ar/core/PlaybackStatus;->nativeCode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/PlaybackStatus;
    .locals 5

    goto/32 :goto_f

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget-object v3, v0, v2

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

    :goto_2
    array-length v1, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Lcom/google/ar/core/PlaybackStatus;->values()[Lcom/google/ar/core/PlaybackStatus;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    if-eq v4, p0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_a
    return-object v3

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    :goto_16
    iget v4, v3, Lcom/google/ar/core/PlaybackStatus;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "Unexpected value for native PlaybackStatus, value="

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_15

    nop

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

    nop

    :goto_1a
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/PlaybackStatus;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const-class v0, Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/PlaybackStatus;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lcom/google/ar/core/PlaybackStatus;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, [Lcom/google/ar/core/PlaybackStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/PlaybackStatus;->$VALUES:[Lcom/google/ar/core/PlaybackStatus;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
