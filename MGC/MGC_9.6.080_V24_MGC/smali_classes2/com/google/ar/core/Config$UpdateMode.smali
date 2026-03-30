.class public final enum Lcom/google/ar/core/Config$UpdateMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$UpdateMode;

.field public static final enum BLOCKING:Lcom/google/ar/core/Config$UpdateMode;

.field public static final enum BLOCKING_WITHOUT_OPENGL:Lcom/google/ar/core/Config$UpdateMode;

.field public static final enum LATEST_CAMERA_IMAGE:Lcom/google/ar/core/Config$UpdateMode;

.field public static final enum LATEST_CAMERA_IMAGE_WITHOUT_OPENGL:Lcom/google/ar/core/Config$UpdateMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$UpdateMode;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const v1, 0x1e

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

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/ar/core/Config$UpdateMode;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    sget-object v3, Lcom/google/ar/core/Config$UpdateMode;->LATEST_CAMERA_IMAGE_WITHOUT_OPENGL:Lcom/google/ar/core/Config$UpdateMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :goto_7
    const v0, 0x20

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

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lcom/google/ar/core/Config$UpdateMode;->BLOCKING:Lcom/google/ar/core/Config$UpdateMode;

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lcom/google/ar/core/Config$UpdateMode;->BLOCKING_WITHOUT_OPENGL:Lcom/google/ar/core/Config$UpdateMode;

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

    :goto_e
    sget-object v1, Lcom/google/ar/core/Config$UpdateMode;->LATEST_CAMERA_IMAGE:Lcom/google/ar/core/Config$UpdateMode;

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
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_17

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

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$UpdateMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$UpdateMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/ar/core/Config$UpdateMode;->BLOCKING:Lcom/google/ar/core/Config$UpdateMode;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/ar/core/Config$UpdateMode;->BLOCKING_WITHOUT_OPENGL:Lcom/google/ar/core/Config$UpdateMode;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

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

    :goto_7
    new-instance v0, Lcom/google/ar/core/Config$UpdateMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lcom/google/ar/core/Config$UpdateMode;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    const-string v1, "LATEST_CAMERA_IMAGE_WITHOUT_OPENGL"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "LATEST_CAMERA_IMAGE"

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/ar/core/Config$UpdateMode;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    const-string v1, "BLOCKING_WITHOUT_OPENGL"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Lcom/google/ar/core/Config$UpdateMode;->$values()[Lcom/google/ar/core/Config$UpdateMode;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_13
    new-instance v0, Lcom/google/ar/core/Config$UpdateMode;

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

    :goto_14
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$UpdateMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    const-string v1, "BLOCKING"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    const v0, 0x17

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    const/4 v2, 0x3

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

    nop

    :goto_19
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

    :goto_1a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$UpdateMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v0, Lcom/google/ar/core/Config$UpdateMode;->$VALUES:[Lcom/google/ar/core/Config$UpdateMode;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_9

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    :goto_1e
    sput-object v0, Lcom/google/ar/core/Config$UpdateMode;->LATEST_CAMERA_IMAGE_WITHOUT_OPENGL:Lcom/google/ar/core/Config$UpdateMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    sput-object v0, Lcom/google/ar/core/Config$UpdateMode;->LATEST_CAMERA_IMAGE:Lcom/google/ar/core/Config$UpdateMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Config$UpdateMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$UpdateMode;
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/ar/core/Config$UpdateMode;->values()[Lcom/google/ar/core/Config$UpdateMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    const-string v1, "Unexpected value for native UpdateMode, value="

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_5
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

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v4, p0, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget v4, v3, Lcom/google/ar/core/Config$UpdateMode;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-lt v2, v1, :cond_1

    nop

    goto/32 :goto_13

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    :goto_f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

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

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_7

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    :goto_14
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v3

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    :goto_19
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$UpdateMode;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    const-class v0, Lcom/google/ar/core/Config$UpdateMode;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lcom/google/ar/core/Config$UpdateMode;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Config$UpdateMode;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$UpdateMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/Config$UpdateMode;->$VALUES:[Lcom/google/ar/core/Config$UpdateMode;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/Config$UpdateMode;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method
