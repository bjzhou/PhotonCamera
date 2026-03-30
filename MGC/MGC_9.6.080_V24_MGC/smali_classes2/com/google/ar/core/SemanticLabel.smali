.class public final enum Lcom/google/ar/core/SemanticLabel;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/SemanticLabel;

.field public static final enum BUILDING:Lcom/google/ar/core/SemanticLabel;

.field public static final enum OBJECT:Lcom/google/ar/core/SemanticLabel;

.field public static final enum PERSON:Lcom/google/ar/core/SemanticLabel;

.field public static final enum ROAD:Lcom/google/ar/core/SemanticLabel;

.field public static final enum SIDEWALK:Lcom/google/ar/core/SemanticLabel;

.field public static final enum SKY:Lcom/google/ar/core/SemanticLabel;

.field public static final enum STRUCTURE:Lcom/google/ar/core/SemanticLabel;

.field public static final enum TERRAIN:Lcom/google/ar/core/SemanticLabel;

.field public static final enum TREE:Lcom/google/ar/core/SemanticLabel;

.field public static final enum UNLABELED:Lcom/google/ar/core/SemanticLabel;

.field public static final enum VEHICLE:Lcom/google/ar/core/SemanticLabel;

.field public static final enum WATER:Lcom/google/ar/core/SemanticLabel;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/SemanticLabel;
    .locals 12

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lcom/google/ar/core/SemanticLabel;->TREE:Lcom/google/ar/core/SemanticLabel;

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

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    sget-object v8, Lcom/google/ar/core/SemanticLabel;->OBJECT:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lcom/google/ar/core/SemanticLabel;->SKY:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    sget-object v4, Lcom/google/ar/core/SemanticLabel;->ROAD:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lcom/google/ar/core/SemanticLabel;->UNLABELED:Lcom/google/ar/core/SemanticLabel;

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

    :goto_e
    sget-object v11, Lcom/google/ar/core/SemanticLabel;->WATER:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    const v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v5, Lcom/google/ar/core/SemanticLabel;->SIDEWALK:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v2, Lcom/google/ar/core/SemanticLabel;->BUILDING:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v6, Lcom/google/ar/core/SemanticLabel;->TERRAIN:Lcom/google/ar/core/SemanticLabel;

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

    :goto_13
    sget-object v10, Lcom/google/ar/core/SemanticLabel;->PERSON:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    filled-new-array/range {v0 .. v11}, [Lcom/google/ar/core/SemanticLabel;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    sget-object v7, Lcom/google/ar/core/SemanticLabel;->STRUCTURE:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v9, Lcom/google/ar/core/SemanticLabel;->VEHICLE:Lcom/google/ar/core/SemanticLabel;

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
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->TERRAIN:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    const-string v1, "STRUCTURE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

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

    :goto_4
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->OBJECT:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->$VALUES:[Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->TREE:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->VEHICLE:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "BUILDING"

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

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

    nop

    :goto_11
    invoke-static {}, Lcom/google/ar/core/SemanticLabel;->$values()[Lcom/google/ar/core/SemanticLabel;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v2, 0x8

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

    nop

    :goto_15
    const-string v1, "PERSON"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "SIDEWALK"

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->STRUCTURE:Lcom/google/ar/core/SemanticLabel;

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

    :goto_1a
    const v1, 0x1d

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

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

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, "OBJECT"

    nop

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

    :goto_1e
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    const-string v1, "SKY"

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

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

    :goto_21
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_22
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

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

    nop

    :goto_24
    const/16 v2, 0x9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2a

    nop

    nop

    :goto_28
    const-string v1, "TREE"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v2, 0xb

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->UNLABELED:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->SKY:Lcom/google/ar/core/SemanticLabel;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    const-string v1, "WATER"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, "ROAD"

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_31
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v1, "TERRAIN"

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_33
    const-string v1, "UNLABELED"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->ROAD:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_35
    const/4 v2, 0x5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v2, 0x6

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_38
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->WATER:Lcom/google/ar/core/SemanticLabel;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->PERSON:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    const/4 v2, 0x7

    nop

    nop

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

    :goto_3b
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->BUILDING:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

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

    :goto_3f
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const-string v1, "VEHICLE"

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

    :goto_43
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sput-object v0, Lcom/google/ar/core/SemanticLabel;->SIDEWALK:Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_45
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/SemanticLabel;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v0, Lcom/google/ar/core/SemanticLabel;

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

    :goto_47
    const/4 v2, 0x2

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

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/SemanticLabel;->nativeCode:I

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

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/SemanticLabel;
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v3

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "Unexpected value for native SemanticLabel, value="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    if-lt v2, v1, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v4, v3, Lcom/google/ar/core/SemanticLabel;->nativeCode:I

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

    :goto_9
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lcom/google/ar/core/SemanticLabel;->values()[Lcom/google/ar/core/SemanticLabel;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    array-length v1, v0

    nop

    goto/32 :goto_16

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

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_17

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
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x1d

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

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_15
    const v1, 0x1c

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
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/SemanticLabel;
    .locals 1

    goto/32 :goto_1

    nop

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
    const-class v0, Lcom/google/ar/core/SemanticLabel;

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

    :goto_2
    check-cast p0, Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/SemanticLabel;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/ar/core/SemanticLabel;->$VALUES:[Lcom/google/ar/core/SemanticLabel;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {v0}, [Lcom/google/ar/core/SemanticLabel;->clone()Ljava/lang/Object;

    move-result-object v0

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
