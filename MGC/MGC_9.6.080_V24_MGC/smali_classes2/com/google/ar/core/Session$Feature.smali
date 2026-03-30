.class public final enum Lcom/google/ar/core/Session$Feature;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Session$Feature;

.field public static final enum DEPTH_IMAGE_USES_GEO_FACADES:Lcom/google/ar/core/Session$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum DO_NOT_USE_ACTIVE_DEPTH_SENSOR:Lcom/google/ar/core/Session$Feature;

.field public static final enum FRONT_CAMERA:Lcom/google/ar/core/Session$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum HIT_TEST_WITH_DEPTH:Lcom/google/ar/core/Session$Feature;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MOTION_TRACKING_ODOMETRY:Lcom/google/ar/core/Session$Feature;

.field public static final enum SHAREABLE_CAMERA:Lcom/google/ar/core/Session$Feature;

.field public static final enum SHARED_CAMERA:Lcom/google/ar/core/Session$Feature;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Session$Feature;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lcom/google/ar/core/Session$Feature;->SHARED_CAMERA:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    filled-new-array/range {v0 .. v6}, [Lcom/google/ar/core/Session$Feature;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    sget-object v2, Lcom/google/ar/core/Session$Feature;->DO_NOT_USE_ACTIVE_DEPTH_SENSOR:Lcom/google/ar/core/Session$Feature;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    sget-object v6, Lcom/google/ar/core/Session$Feature;->DEPTH_IMAGE_USES_GEO_FACADES:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    sget-object v3, Lcom/google/ar/core/Session$Feature;->MOTION_TRACKING_ODOMETRY:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    sget-object v4, Lcom/google/ar/core/Session$Feature;->HIT_TEST_WITH_DEPTH:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v5, Lcom/google/ar/core/Session$Feature;->SHAREABLE_CAMERA:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lcom/google/ar/core/Session$Feature;->FRONT_CAMERA:Lcom/google/ar/core/Session$Feature;

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
    goto/32 :goto_e

    nop
.end method

.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2, v4}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/ar/core/Session$Feature;->DO_NOT_USE_ACTIVE_DEPTH_SENSOR:Lcom/google/ar/core/Session$Feature;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v4, v2}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lcom/google/ar/core/Session$Feature;->FRONT_CAMERA:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0x3e8

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

    :goto_b
    new-instance v0, Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lcom/google/ar/core/Session$Feature;->SHARED_CAMERA:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "DO_NOT_USE_ACTIVE_DEPTH_SENSOR"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x7

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

    nop

    :goto_f
    const/16 v2, 0xe

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Session$Feature;->$VALUES:[Lcom/google/ar/core/Session$Feature;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    const-string v1, "FRONT_CAMERA"

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

    :goto_15
    const-string v1, "MOTION_TRACKING_ODOMETRY"

    nop

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

    :goto_16
    const-string v1, "SHARED_CAMERA"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Lcom/google/ar/core/Session$Feature;->$values()[Lcom/google/ar/core/Session$Feature;

    move-result-object v0

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

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v2, 0xd

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    const-string v5, "HIT_TEST_WITH_DEPTH"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sput-object v0, Lcom/google/ar/core/Session$Feature;->DEPTH_IMAGE_USES_GEO_FACADES:Lcom/google/ar/core/Session$Feature;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    new-instance v0, Lcom/google/ar/core/Session$Feature;

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

    :goto_22
    const-string v1, "SHAREABLE_CAMERA"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_24
    new-instance v0, Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sput-object v0, Lcom/google/ar/core/Session$Feature;->MOTION_TRACKING_ODOMETRY:Lcom/google/ar/core/Session$Feature;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_26
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sput-object v0, Lcom/google/ar/core/Session$Feature;->HIT_TEST_WITH_DEPTH:Lcom/google/ar/core/Session$Feature;

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

    nop

    :goto_28
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_2a
    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0, v5, v1, v2}, Lcom/google/ar/core/Session$Feature;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2d
    const-string v1, "DEPTH_IMAGE_USES_GEO_FACADES"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sput-object v0, Lcom/google/ar/core/Session$Feature;->SHAREABLE_CAMERA:Lcom/google/ar/core/Session$Feature;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Lcom/google/ar/core/Session$Feature;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v0, Lcom/google/ar/core/Session$Feature;

    nop

    nop

    goto/32 :goto_23

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

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Session$Feature;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Session$Feature;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/Session$Feature;

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

    nop

    nop

    nop

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/Session$Feature;

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
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
.end method

.method public static values()[Lcom/google/ar/core/Session$Feature;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/Session$Feature;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/Session$Feature;->$VALUES:[Lcom/google/ar/core/Session$Feature;

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

    :goto_2
    check-cast v0, [Lcom/google/ar/core/Session$Feature;

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
.end method
