.class public final enum Lcom/google/ar/core/Config$SegmentationMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$SegmentationMode;

.field public static final enum BACKGROUND:Lcom/google/ar/core/Config$SegmentationMode;

.field public static final enum BACKGROUND_LITE:Lcom/google/ar/core/Config$SegmentationMode;

.field public static final enum BACKGROUND_LITE_CPU:Lcom/google/ar/core/Config$SegmentationMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$SegmentationMode;

.field public static final enum PEOPLE:Lcom/google/ar/core/Config$SegmentationMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$SegmentationMode;
    .locals 5

    goto/32 :goto_f

    nop

    nop

    :goto_0
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/ar/core/Config$SegmentationMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v2, Lcom/google/ar/core/Config$SegmentationMode;->BACKGROUND_LITE:Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    sget-object v3, Lcom/google/ar/core/Config$SegmentationMode;->BACKGROUND_LITE_CPU:Lcom/google/ar/core/Config$SegmentationMode;

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

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    sget-object v4, Lcom/google/ar/core/Config$SegmentationMode;->PEOPLE:Lcom/google/ar/core/Config$SegmentationMode;

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

    :goto_7
    const v1, 0x16

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    sget-object v1, Lcom/google/ar/core/Config$SegmentationMode;->BACKGROUND:Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lcom/google/ar/core/Config$SegmentationMode;->DISABLED:Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    const-string v1, "DISABLED"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/Config$SegmentationMode;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/ar/core/Config$SegmentationMode;->DISABLED:Lcom/google/ar/core/Config$SegmentationMode;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {}, Lcom/google/ar/core/Config$SegmentationMode;->$values()[Lcom/google/ar/core/Config$SegmentationMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$SegmentationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "BACKGROUND_LITE_CPU"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lcom/google/ar/core/Config$SegmentationMode;->BACKGROUND_LITE:Lcom/google/ar/core/Config$SegmentationMode;

    nop

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

    :goto_b
    goto/32 :goto_11

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
    goto/32 :goto_b

    nop

    nop

    :goto_e
    const-string v1, "BACKGROUND"

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_17

    nop

    nop

    :goto_12
    new-instance v0, Lcom/google/ar/core/Config$SegmentationMode;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Config$SegmentationMode;->$VALUES:[Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Config$SegmentationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$SegmentationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    new-instance v0, Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lcom/google/ar/core/Config$SegmentationMode;->BACKGROUND:Lcom/google/ar/core/Config$SegmentationMode;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v3, "PEOPLE"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    const-string v1, "BACKGROUND_LITE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$SegmentationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1e
    sput-object v0, Lcom/google/ar/core/Config$SegmentationMode;->BACKGROUND_LITE_CPU:Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    sput-object v0, Lcom/google/ar/core/Config$SegmentationMode;->PEOPLE:Lcom/google/ar/core/Config$SegmentationMode;

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

    :goto_20
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$SegmentationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_6

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
    iput p3, p0, Lcom/google/ar/core/Config$SegmentationMode;->nativeCode:I

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
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$SegmentationMode;
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xa

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    return-object v3

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lcom/google/ar/core/Config$SegmentationMode;->values()[Lcom/google/ar/core/Config$SegmentationMode;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eq v4, p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_11
    const-string v1, "Unexpected value for native SegmentationMode, value="

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v3, v0, v2

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
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    :goto_15
    iget v4, v3, Lcom/google/ar/core/Config$SegmentationMode;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_16
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    array-length v1, v0

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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$SegmentationMode;
    .locals 1

    goto/32 :goto_2

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

    :goto_1
    check-cast p0, Lcom/google/ar/core/Config$SegmentationMode;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Config$SegmentationMode;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$SegmentationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/ar/core/Config$SegmentationMode;->$VALUES:[Lcom/google/ar/core/Config$SegmentationMode;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/Config$SegmentationMode;

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

    nop

    nop
.end method
