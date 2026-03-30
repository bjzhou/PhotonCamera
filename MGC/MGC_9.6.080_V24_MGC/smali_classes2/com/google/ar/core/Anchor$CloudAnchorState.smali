.class public final enum Lcom/google/ar/core/Anchor$CloudAnchorState;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_CLOUD_ID_NOT_FOUND:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_HOSTING_DATASET_PROCESSING_FAILED:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_HOSTING_SERVICE_UNAVAILABLE:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_INTERNAL:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_RESOLVING_LOCALIZATION_NO_MATCH:Lcom/google/ar/core/Anchor$CloudAnchorState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ERROR_RESOLVING_SDK_VERSION_TOO_NEW:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_RESOLVING_SDK_VERSION_TOO_OLD:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum ERROR_SERVICE_UNAVAILABLE:Lcom/google/ar/core/Anchor$CloudAnchorState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum NONE:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum SUCCESS:Lcom/google/ar/core/Anchor$CloudAnchorState;

.field public static final enum TASK_IN_PROGRESS:Lcom/google/ar/core/Anchor$CloudAnchorState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Anchor$CloudAnchorState;
    .locals 13

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array/range {v0 .. v12}, [Lcom/google/ar/core/Anchor$CloudAnchorState;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v6, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_5
    sget-object v3, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_INTERNAL:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    sget-object v5, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_SERVICE_UNAVAILABLE:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_8
    sget-object v2, Lcom/google/ar/core/Anchor$CloudAnchorState;->SUCCESS:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    sget-object v7, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_HOSTING_DATASET_PROCESSING_FAILED:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_a
    sget-object v4, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v9, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOLVING_LOCALIZATION_NO_MATCH:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_c
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    sget-object v1, Lcom/google/ar/core/Anchor$CloudAnchorState;->TASK_IN_PROGRESS:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->NONE:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    sget-object v8, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_CLOUD_ID_NOT_FOUND:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_11
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    sget-object v12, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_HOSTING_SERVICE_UNAVAILABLE:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    sget-object v11, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOLVING_SDK_VERSION_TOO_NEW:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_14
    rem-int v0, v0, v1

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

    nop

    :goto_15
    sget-object v10, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOLVING_SDK_VERSION_TOO_OLD:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3
    const-string v3, "ERROR_NOT_AUTHORIZED"

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_4
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lcom/google/ar/core/Anchor$CloudAnchorState;->$values()[Lcom/google/ar/core/Anchor$CloudAnchorState;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    const-string v1, "TASK_IN_PROGRESS"

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

    :goto_a
    const/16 v1, 0xb

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_b
    const/4 v2, -0x6

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

    :goto_c
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_INTERNAL:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->$VALUES:[Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v3, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->ZVlpTnyRPczeag:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v3, "ERROR_HOSTING_DATASET_PROCESSING_FAILED"

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

    :goto_13
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->TASK_IN_PROGRESS:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_HOSTING_SERVICE_UNAVAILABLE:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_17
    const-string v3, "ERROR_CLOUD_ID_NOT_FOUND"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1a
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1b
    const-string v1, "NONE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, -0x7

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v1, 0x8

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    const-string v3, "ERROR_RESOURCE_EXHAUSTED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_22
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_23
    const-string v3, "ERROR_RESOLVING_SDK_VERSION_TOO_OLD"

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_25
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->NONE:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_26
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2a
    const-string v3, "ERROR_HOSTING_SERVICE_UNAVAILABLE"

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2c
    const/4 v2, -0x4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v2, -0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    const-string v1, "SUCCESS"

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x6

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    const/16 v2, -0xa

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

    :goto_32
    const-string v3, "ERROR_INTERNAL"

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_33
    const/4 v2, 0x0

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

    :goto_34
    const-string v3, "ERROR_SERVICE_UNAVAILABLE"

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_36
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3b
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_HOSTING_DATASET_PROCESSING_FAILED:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v3, "ERROR_RESOLVING_SDK_VERSION_TOO_NEW"

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

    :goto_42
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_44
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_45
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOLVING_SDK_VERSION_TOO_OLD:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v2, -0x8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_19

    nop

    :goto_48
    const/16 v2, -0x9

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_4a
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v2, -0x5

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_SERVICE_UNAVAILABLE:Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_4d
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_CLOUD_ID_NOT_FOUND:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4e
    const/4 v2, -0x3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4f
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOLVING_SDK_VERSION_TOO_NEW:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_52
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->SUCCESS:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_54
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    sput-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->ERROR_RESOLVING_LOCALIZATION_NO_MATCH:Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$CloudAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_1

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

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Anchor$CloudAnchorState;->nativeCode:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Anchor$CloudAnchorState;
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v1, v0

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

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    throw v0

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    aget-object v3, v0, v2

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_d
    const v1, 0x1d

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

    :goto_e
    return-object v3

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    invoke-static {}, Lcom/google/ar/core/Anchor$CloudAnchorState;->values()[Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    nop

    nop

    :goto_12
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    if-eq v4, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_16
    const-string v1, "Unexpected value for native CloudAnchorState, value="

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    add-int/lit8 v2, v2, 0x1

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

    :goto_19
    iget v4, v3, Lcom/google/ar/core/Anchor$CloudAnchorState;->nativeCode:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Anchor$CloudAnchorState;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_2

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
    check-cast p0, Lcom/google/ar/core/Anchor$CloudAnchorState;

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
    const-class v0, Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Anchor$CloudAnchorState;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/Anchor$CloudAnchorState;->$VALUES:[Lcom/google/ar/core/Anchor$CloudAnchorState;

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

    :goto_1
    invoke-virtual {v0}, [Lcom/google/ar/core/Anchor$CloudAnchorState;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/Anchor$CloudAnchorState;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public isError()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-ltz p0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lcom/google/ar/core/Anchor$CloudAnchorState;->nativeCode:I

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
.end method
