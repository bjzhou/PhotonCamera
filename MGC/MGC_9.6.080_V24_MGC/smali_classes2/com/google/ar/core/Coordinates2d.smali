.class public final enum Lcom/google/ar/core/Coordinates2d;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Coordinates2d;

.field public static final enum IMAGE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

.field public static final enum IMAGE_PIXELS:Lcom/google/ar/core/Coordinates2d;

.field public static final enum OPENGL_NORMALIZED_DEVICE_COORDINATES:Lcom/google/ar/core/Coordinates2d;

.field public static final enum TEXTURE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

.field public static final enum TEXTURE_TEXELS:Lcom/google/ar/core/Coordinates2d;

.field public static final enum VIEW:Lcom/google/ar/core/Coordinates2d;

.field public static final enum VIEW_NORMALIZED:Lcom/google/ar/core/Coordinates2d;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Coordinates2d;
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v4, Lcom/google/ar/core/Coordinates2d;->OPENGL_NORMALIZED_DEVICE_COORDINATES:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    sget-object v2, Lcom/google/ar/core/Coordinates2d;->IMAGE_PIXELS:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_d

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lcom/google/ar/core/Coordinates2d;->TEXTURE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    filled-new-array/range {v0 .. v6}, [Lcom/google/ar/core/Coordinates2d;

    move-result-object v0

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

    :goto_7
    sget-object v5, Lcom/google/ar/core/Coordinates2d;->VIEW:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    sget-object v0, Lcom/google/ar/core/Coordinates2d;->TEXTURE_TEXELS:Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v3, Lcom/google/ar/core/Coordinates2d;->IMAGE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    :goto_f
    sget-object v6, Lcom/google/ar/core/Coordinates2d;->VIEW_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const v1, 0x5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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
.end method

.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_2b

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ar/core/Coordinates2d;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->$VALUES:[Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x8

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_6
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->VIEW_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->OPENGL_NORMALIZED_DEVICE_COORDINATES:Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->VIEW:Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Coordinates2d;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Coordinates2d;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v4, v1, v2}, Lcom/google/ar/core/Coordinates2d;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v1, "VIEW_NORMALIZED"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    :goto_15
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v4, "VIEW"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_18
    new-instance v0, Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->IMAGE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {}, Lcom/google/ar/core/Coordinates2d;->$values()[Lcom/google/ar/core/Coordinates2d;

    move-result-object v0

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

    :goto_1c
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    const/4 v3, 0x6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Coordinates2d;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->TEXTURE_TEXELS:Lcom/google/ar/core/Coordinates2d;

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

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_21
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    const-string v1, "TEXTURE_NORMALIZED"

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Coordinates2d;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Coordinates2d;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v1, "TEXTURE_TEXELS"

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

    :goto_2a
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x20

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

    :goto_2c
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->IMAGE_PIXELS:Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2d
    const-string v1, "IMAGE_PIXELS"

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "OPENGL_NORMALIZED_DEVICE_COORDINATES"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "IMAGE_NORMALIZED"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_30
    sput-object v0, Lcom/google/ar/core/Coordinates2d;->TEXTURE_NORMALIZED:Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    goto/32 :goto_11

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
    iput p3, p0, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    nop

    goto/32 :goto_2

    nop

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

.method static forNumber(I)Lcom/google/ar/core/Coordinates2d;
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_2
    return-object v3

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_13

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-eq v4, p0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const-string v1, "Unexpected value for native Coordinates2d, value="

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v4, v3, Lcom/google/ar/core/Coordinates2d;->nativeCode:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Lcom/google/ar/core/Coordinates2d;->values()[Lcom/google/ar/core/Coordinates2d;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    throw v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v3, v0, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Coordinates2d;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/Coordinates2d;

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

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Coordinates2d;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lcom/google/ar/core/Coordinates2d;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, [Lcom/google/ar/core/Coordinates2d;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/Coordinates2d;->$VALUES:[Lcom/google/ar/core/Coordinates2d;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
