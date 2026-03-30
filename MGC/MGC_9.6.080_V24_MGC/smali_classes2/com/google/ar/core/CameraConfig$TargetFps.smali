.class public final enum Lcom/google/ar/core/CameraConfig$TargetFps;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/CameraConfig$TargetFps;

.field public static final enum TARGET_FPS_30:Lcom/google/ar/core/CameraConfig$TargetFps;

.field public static final enum TARGET_FPS_60:Lcom/google/ar/core/CameraConfig$TargetFps;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/CameraConfig$TargetFps;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x18

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

    :goto_1
    sget-object v1, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_60:Lcom/google/ar/core/CameraConfig$TargetFps;

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
    filled-new-array {v0, v1}, [Lcom/google/ar/core/CameraConfig$TargetFps;

    move-result-object v0

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x11

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_30:Lcom/google/ar/core/CameraConfig$TargetFps;

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/CameraConfig$TargetFps;

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

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/CameraConfig$TargetFps;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-static {}, Lcom/google/ar/core/CameraConfig$TargetFps;->$values()[Lcom/google/ar/core/CameraConfig$TargetFps;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/ar/core/CameraConfig$TargetFps;

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

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    sput-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->$VALUES:[Lcom/google/ar/core/CameraConfig$TargetFps;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ar/core/CameraConfig$TargetFps;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "TARGET_FPS_60"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    sput-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_60:Lcom/google/ar/core/CameraConfig$TargetFps;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_11
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

    :goto_12
    const-string v1, "TARGET_FPS_30"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->TARGET_FPS_30:Lcom/google/ar/core/CameraConfig$TargetFps;

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

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/CameraConfig$TargetFps;->nativeCode:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method static forBitFlags(I)Ljava/util/EnumSet;
    .locals 6

    goto/32 :goto_4

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    :goto_3
    const v1, 0x8

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
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    invoke-virtual {v0, v4}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    if-lt v3, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lcom/google/ar/core/CameraConfig$TargetFps;->values()[Lcom/google/ar/core/CameraConfig$TargetFps;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    iget v5, v4, Lcom/google/ar/core/CameraConfig$TargetFps;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    aget-object v4, v1, v3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    const-class v0, Lcom/google/ar/core/CameraConfig$TargetFps;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    and-int/2addr v5, p0

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

    :goto_17
    if-nez v5, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/CameraConfig$TargetFps;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/CameraConfig$TargetFps;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/CameraConfig$TargetFps;

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

.method public static values()[Lcom/google/ar/core/CameraConfig$TargetFps;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/CameraConfig$TargetFps;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/CameraConfig$TargetFps;->$VALUES:[Lcom/google/ar/core/CameraConfig$TargetFps;

    nop

    goto/32 :goto_0

    nop

    nop

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
    check-cast v0, [Lcom/google/ar/core/CameraConfig$TargetFps;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
