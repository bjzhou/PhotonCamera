.class public final enum Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

.field public static final enum BLUESKY:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

.field public static final enum FACADES:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

.field public static final enum LOCALIZE:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

.field public static final enum TERRAIN_CELL:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

.field public static final enum TERRAIN_POINT:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

.field public static final enum VPS_AVAILABILITY:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

.field public static final enum WARMUP:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->LOCALIZE:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v3, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->WARMUP:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    sget-object v2, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->BLUESKY:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_5
    sget-object v4, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->TERRAIN_POINT:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->FACADES:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    sget-object v5, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->TERRAIN_CELL:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    sget-object v6, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->VPS_AVAILABILITY:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    filled-new-array/range {v0 .. v6}, [Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

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

    nop

    goto/32 :goto_4

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

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_7

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
    goto/32 :goto_2c

    nop

    nop

    :goto_3
    const/4 v2, 0x5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->FACADES:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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

    :goto_7
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "TERRAIN_CELL"

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

    nop

    :goto_a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->BLUESKY:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_29

    nop

    :goto_f
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->LOCALIZE:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    const-string v1, "WARMUP"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    invoke-static {}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->$values()[Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    move-result-object v0

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

    :goto_13
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->$VALUES:[Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_20

    nop

    nop

    :goto_15
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->VPS_AVAILABILITY:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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

    :goto_16
    const/4 v2, 0x1

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

    :goto_17
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "BLUESKY"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    const-string v1, "VPS_AVAILABILITY"

    nop

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

    :goto_1b
    const-string v1, "LOCALIZE"

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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

    nop

    :goto_1e
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->TERRAIN_POINT:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->TERRAIN_CELL:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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

    nop

    :goto_24
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->qQmI:Ljava/lang/String;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    sput-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->WARMUP:Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2d
    const-string v1, "FACADES"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2f
    new-instance v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->nativeCode:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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

    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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

    :goto_2
    const-class v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;->$VALUES:[Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

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
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/EarthNetworkClientInterface$ServiceMethod;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
