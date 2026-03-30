.class public final enum Lcom/google/ar/core/AugmentedFace$RegionType;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/AugmentedFace$RegionType;

.field public static final enum FOREHEAD_LEFT:Lcom/google/ar/core/AugmentedFace$RegionType;

.field public static final enum FOREHEAD_RIGHT:Lcom/google/ar/core/AugmentedFace$RegionType;

.field public static final enum NOSE_TIP:Lcom/google/ar/core/AugmentedFace$RegionType;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/AugmentedFace$RegionType;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lcom/google/ar/core/AugmentedFace$RegionType;->FOREHEAD_RIGHT:Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    sget-object v1, Lcom/google/ar/core/AugmentedFace$RegionType;->FOREHEAD_LEFT:Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    sget-object v0, Lcom/google/ar/core/AugmentedFace$RegionType;->NOSE_TIP:Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

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

    nop

    :goto_d
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/AugmentedFace$RegionType;

    move-result-object v0

    nop

    goto/32 :goto_8

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

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_1
    const-string v1, "FOREHEAD_RIGHT"

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

    :goto_2
    const v0, 0xb

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

    :goto_3
    const/4 v2, 0x2

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

    :goto_4
    new-instance v0, Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->UzYSxKIoLmmNwzI:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lcom/google/ar/core/AugmentedFace$RegionType;->$values()[Lcom/google/ar/core/AugmentedFace$RegionType;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/AugmentedFace$RegionType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/ar/core/AugmentedFace$RegionType;

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

    :goto_10
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/AugmentedFace$RegionType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "FOREHEAD_LEFT"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/AugmentedFace$RegionType;->NOSE_TIP:Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sput-object v0, Lcom/google/ar/core/AugmentedFace$RegionType;->$VALUES:[Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    sput-object v0, Lcom/google/ar/core/AugmentedFace$RegionType;->FOREHEAD_RIGHT:Lcom/google/ar/core/AugmentedFace$RegionType;

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

    :goto_1a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/AugmentedFace$RegionType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v0, Lcom/google/ar/core/AugmentedFace$RegionType;->FOREHEAD_LEFT:Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

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
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lcom/google/ar/core/AugmentedFace$RegionType;->nativeCode:I

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

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/AugmentedFace$RegionType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const-class v0, Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop
.end method

.method public static values()[Lcom/google/ar/core/AugmentedFace$RegionType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/AugmentedFace$RegionType;->$VALUES:[Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    check-cast v0, [Lcom/google/ar/core/AugmentedFace$RegionType;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    invoke-virtual {v0}, [Lcom/google/ar/core/AugmentedFace$RegionType;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
