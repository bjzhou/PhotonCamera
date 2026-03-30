.class public final enum Lcom/google/ar/core/Module;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Module;

.field public static final enum AUGMENTED_FACE_IMPROVED_LIP_EYE:Lcom/google/ar/core/Module;

.field public static final enum DEEP_IO:Lcom/google/ar/core/Module;

.field public static final enum DEPTH_NET:Lcom/google/ar/core/Module;

.field public static final enum FACE_MESH_ULTRALITE:Lcom/google/ar/core/Module;

.field public static final enum NORMAL_NET:Lcom/google/ar/core/Module;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Module;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    :goto_0
    sget-object v1, Lcom/google/ar/core/Module;->NORMAL_NET:Lcom/google/ar/core/Module;

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

    :goto_1
    goto/32 :goto_7

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    sget-object v2, Lcom/google/ar/core/Module;->DEPTH_NET:Lcom/google/ar/core/Module;

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

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v4, Lcom/google/ar/core/Module;->DEEP_IO:Lcom/google/ar/core/Module;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/ar/core/Module;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    sget-object v3, Lcom/google/ar/core/Module;->FACE_MESH_ULTRALITE:Lcom/google/ar/core/Module;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const v1, 0x1d

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

    :goto_d
    sget-object v0, Lcom/google/ar/core/Module;->AUGMENTED_FACE_IMPROVED_LIP_EYE:Lcom/google/ar/core/Module;

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

    :goto_e
    return-object v0

    nop

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

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x4

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

    :goto_2
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    const-string v1, "FACE_MESH_ULTRALITE"

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

    :goto_4
    sput-object v0, Lcom/google/ar/core/Module;->DEEP_IO:Lcom/google/ar/core/Module;

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

    :goto_5
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Module;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "AUGMENTED_FACE_IMPROVED_LIP_EYE"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Module;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "DEPTH_NET"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/Module;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lcom/google/ar/core/Module;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x10

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_d
    sput-object v0, Lcom/google/ar/core/Module;->DEPTH_NET:Lcom/google/ar/core/Module;

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

    :goto_e
    sput-object v0, Lcom/google/ar/core/Module;->NORMAL_NET:Lcom/google/ar/core/Module;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lcom/google/ar/core/Module;->FACE_MESH_ULTRALITE:Lcom/google/ar/core/Module;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Module;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "DEEP_IO"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    const-string v1, "NORMAL_NET"

    nop

    nop

    goto/32 :goto_1e

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Lcom/google/ar/core/Module;->$values()[Lcom/google/ar/core/Module;

    move-result-object v0

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

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x4

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

    :goto_18
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Module;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lcom/google/ar/core/Module;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1b
    sput-object v0, Lcom/google/ar/core/Module;->$VALUES:[Lcom/google/ar/core/Module;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lcom/google/ar/core/Module;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lcom/google/ar/core/Module;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sput-object v0, Lcom/google/ar/core/Module;->AUGMENTED_FACE_IMPROVED_LIP_EYE:Lcom/google/ar/core/Module;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Module;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    :goto_24
    goto/32 :goto_1a

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

    :goto_0
    return-void

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/Module;->nativeCode:I

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/Module;
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    throw v0

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
    aget-object v3, v0, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    :goto_6
    rem-int v0, v0, v1

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

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    add-int/lit8 v2, v2, 0x1

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

    :goto_a
    goto/16 :goto_17

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    const-string v1, "Unexpected value for native Module, value="

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

    :goto_f
    return-object v3

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    array-length v1, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-static {}, Lcom/google/ar/core/Module;->values()[Lcom/google/ar/core/Module;

    move-result-object v0

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

    :goto_15
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

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    iget v4, v3, Lcom/google/ar/core/Module;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Module;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/Module;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

    nop

    :goto_3
    const-class v0, Lcom/google/ar/core/Module;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Module;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    check-cast v0, [Lcom/google/ar/core/Module;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/Module;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/Module;->$VALUES:[Lcom/google/ar/core/Module;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
