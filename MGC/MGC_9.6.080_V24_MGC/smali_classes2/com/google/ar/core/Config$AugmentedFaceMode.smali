.class public final enum Lcom/google/ar/core/Config$AugmentedFaceMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$AugmentedFaceMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$AugmentedFaceMode;

.field public static final enum MESH3D:Lcom/google/ar/core/Config$AugmentedFaceMode;

.field public static final enum MESH3D_FRONT_OR_BACK_PARTNER:Lcom/google/ar/core/Config$AugmentedFaceMode;

.field public static final enum MESH3D_IMPROVED_EYE:Lcom/google/ar/core/Config$AugmentedFaceMode;

.field public static final enum MESH3D_IMPROVED_LIP_EYE:Lcom/google/ar/core/Config$AugmentedFaceMode;

.field public static final enum POSE:Lcom/google/ar/core/Config$AugmentedFaceMode;

.field public static final enum POSE_LOW_FPS:Lcom/google/ar/core/Config$AugmentedFaceMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$AugmentedFaceMode;
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v5, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D_FRONT_OR_BACK_PARTNER:Lcom/google/ar/core/Config$AugmentedFaceMode;

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    filled-new-array/range {v0 .. v6}, [Lcom/google/ar/core/Config$AugmentedFaceMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    return-object v0

    nop

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
    sget-object v2, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D:Lcom/google/ar/core/Config$AugmentedFaceMode;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->DISABLED:Lcom/google/ar/core/Config$AugmentedFaceMode;

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

    :goto_b
    const v1, 0x18

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

    :goto_c
    sget-object v6, Lcom/google/ar/core/Config$AugmentedFaceMode;->POSE_LOW_FPS:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const v0, 0x1b

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    sget-object v1, Lcom/google/ar/core/Config$AugmentedFaceMode;->POSE:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    sget-object v4, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D_IMPROVED_EYE:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    sget-object v3, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D_IMPROVED_LIP_EYE:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    :goto_1
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$AugmentedFaceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->POSE_LOW_FPS:Lcom/google/ar/core/Config$AugmentedFaceMode;

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

    :goto_5
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->DISABLED:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D_FRONT_OR_BACK_PARTNER:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lcom/google/ar/core/Config$AugmentedFaceMode;->$values()[Lcom/google/ar/core/Config$AugmentedFaceMode;

    move-result-object v0

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

    nop

    :goto_8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Config$AugmentedFaceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_6

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Config$AugmentedFaceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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
    const v1, 0x2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Config$AugmentedFaceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$AugmentedFaceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D_IMPROVED_LIP_EYE:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->$VALUES:[Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v1, "POSE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

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

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    const/16 v2, 0x195

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0x1a2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

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

    nop

    :goto_1f
    const-string v3, "MESH3D_IMPROVED_LIP_EYE"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v3, "POSE_LOW_FPS"

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

    :goto_22
    const-string v3, "MESH3D_FRONT_OR_BACK_PARTNER"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0x2

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

    :goto_24
    const-string v1, "DISABLED"

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    const/16 v2, 0x191

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    const-string v1, "MESH3D"

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    new-instance v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_29
    const/16 v2, 0x64

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Config$AugmentedFaceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2c
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->POSE:Lcom/google/ar/core/Config$AugmentedFaceMode;

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

    :goto_2d
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    sput-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->MESH3D_IMPROVED_EYE:Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$AugmentedFaceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v3, "MESH3D_IMPROVED_EYE"

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

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

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Config$AugmentedFaceMode;->nativeCode:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$AugmentedFaceMode;
    .locals 5

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

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
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    aget-object v3, v0, v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget v4, v3, Lcom/google/ar/core/Config$AugmentedFaceMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    goto :goto_13

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "Unexpected value for native AugmentedFaceMode, value="

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v2, v2, 0x1

    nop

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
    invoke-static {}, Lcom/google/ar/core/Config$AugmentedFaceMode;->values()[Lcom/google/ar/core/Config$AugmentedFaceMode;

    move-result-object v0

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

    :goto_d
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    array-length v1, v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw v0

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_18
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$AugmentedFaceMode;
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

    nop

    :goto_1
    const-class v0, Lcom/google/ar/core/Config$AugmentedFaceMode;

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

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Config$AugmentedFaceMode;

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

.method public static values()[Lcom/google/ar/core/Config$AugmentedFaceMode;
    .locals 1

    goto/32 :goto_3

    nop

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
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$AugmentedFaceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    check-cast v0, [Lcom/google/ar/core/Config$AugmentedFaceMode;

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

    :goto_3
    sget-object v0, Lcom/google/ar/core/Config$AugmentedFaceMode;->$VALUES:[Lcom/google/ar/core/Config$AugmentedFaceMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
