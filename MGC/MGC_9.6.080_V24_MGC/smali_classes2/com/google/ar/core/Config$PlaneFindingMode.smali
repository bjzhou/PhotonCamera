.class public final enum Lcom/google/ar/core/Config$PlaneFindingMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum HORIZONTAL_AND_VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

.field public static final enum VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$PlaneFindingMode;
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL_AND_VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v2, Lcom/google/ar/core/Config$PlaneFindingMode;->VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    sget-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->DISABLED:Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/ar/core/Config$PlaneFindingMode;

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
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    goto/32 :goto_12

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

    goto/32 :goto_1f

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "HORIZONTAL_AND_VERTICAL"

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

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

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

    :goto_9
    const-string v1, "HORIZONTAL"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Landroidx/viewpager2/widget/jY/lIiWb;->KFCkBmxMR:Ljava/lang/String;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->$VALUES:[Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL:Lcom/google/ar/core/Config$PlaneFindingMode;

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

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->HORIZONTAL_AND_VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x17

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

    :goto_16
    invoke-static {}, Lcom/google/ar/core/Config$PlaneFindingMode;->$values()[Lcom/google/ar/core/Config$PlaneFindingMode;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    :goto_1d
    new-instance v0, Lcom/google/ar/core/Config$PlaneFindingMode;

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

    :goto_1e
    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->VERTICAL:Lcom/google/ar/core/Config$PlaneFindingMode;

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

    :goto_1f
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$PlaneFindingMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    sput-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->DISABLED:Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->jScxEfZmWDliXMG:Ljava/lang/String;

    nop

    goto/32 :goto_17

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
    iput p3, p0, Lcom/google/ar/core/Config$PlaneFindingMode;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$PlaneFindingMode;
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Unexpected value for native PlaneFindingMode, value="

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    return-object v3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    if-eq v4, p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v3, v0, v2

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

    :goto_9
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    :goto_c
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

    :goto_d
    invoke-static {}, Lcom/google/ar/core/Config$PlaneFindingMode;->values()[Lcom/google/ar/core/Config$PlaneFindingMode;

    move-result-object v0

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

    :goto_e
    goto :goto_1a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_12
    if-lt v2, v1, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_14
    if-lez v0, :cond_2

    nop

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

    :goto_15
    const v0, 0x8

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

    :goto_16
    iget v4, v3, Lcom/google/ar/core/Config$PlaneFindingMode;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    :goto_18
    array-length v1, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$PlaneFindingMode;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
    return-object p0

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Config$PlaneFindingMode;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/Config$PlaneFindingMode;->$VALUES:[Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$PlaneFindingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/Config$PlaneFindingMode;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
