.class public final enum Lcom/google/ar/core/CameraConfig$StereoCameraUsage;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

.field public static final enum DO_NOT_USE:Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

.field public static final enum REQUIRE_AND_USE:Lcom/google/ar/core/CameraConfig$StereoCameraUsage;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

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

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_5

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    return-object v0

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
    sget-object v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->REQUIRE_AND_USE:Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    :goto_a
    filled-new-array {v0, v1}, [Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->DO_NOT_USE:Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x1

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

    :goto_7
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->REQUIRE_AND_USE:Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    :goto_9
    invoke-static {}, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->$values()[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->DO_NOT_USE:Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "REQUIRE_AND_USE"

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

    :goto_e
    new-instance v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->$VALUES:[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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
    rem-int v0, v0, v1

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

    :goto_14
    const-string v1, "DO_NOT_USE"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    :goto_16
    const v1, 0x10

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
    iput p3, p0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->nativeCode:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

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

.method static forBitFlags(I)Ljava/util/EnumSet;
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

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
    goto/32 :goto_9

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

    goto/32 :goto_c

    nop

    nop

    :goto_4
    aget-object v4, v1, v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    const-class v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x11

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    :goto_d
    invoke-static {}, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->values()[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    move-result-object v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    goto :goto_11

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x0

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    if-lt v3, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    array-length v2, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v3, v3, 0x1

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

    :goto_17
    iget v5, v4, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->nativeCode:I

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

    nop

    nop

    :goto_18
    and-int/2addr v5, p0

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

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/CameraConfig$StereoCameraUsage;
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_1
    if-lt v2, v1, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->values()[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    nop

    nop

    :goto_3
    if-eq v4, p0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return-object v3

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v0, 0x15

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    const/4 v2, 0x0

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    iget v4, v3, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "Unexpected value for native StereoCameraUsage, value="

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_a

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1c

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

    :goto_17
    throw v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_f

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/CameraConfig$StereoCameraUsage;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->clone()Ljava/lang/Object;

    move-result-object v0

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
    sget-object v0, Lcom/google/ar/core/CameraConfig$StereoCameraUsage;->$VALUES:[Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    :goto_2
    check-cast v0, [Lcom/google/ar/core/CameraConfig$StereoCameraUsage;

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

    nop

    nop
.end method
