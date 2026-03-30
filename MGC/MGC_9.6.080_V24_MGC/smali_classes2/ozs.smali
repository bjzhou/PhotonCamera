.class public final enum Lozs;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lozs;

.field public static final enum b:Lozs;

.field public static final enum c:Lozs;

.field public static final enum d:Lozs;

.field public static final enum e:Lozs;

.field public static final enum f:Lozs;

.field private static final h:Ljava/util/Map;

.field private static final i:Ljava/util/Map;

.field private static final synthetic j:[Lozs;


# instance fields
.field public final g:I

.field private final k:Lozg;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    goto/32 :goto_39

    nop

    nop

    :goto_0
    const/16 v8, 0x7d4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v3, Lozs;

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
    invoke-direct {v2, v4, v7, v5, v3}, Lozs;-><init>(Ljava/lang/String;IILozg;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v5, Lozs;->f:Lozs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "QUALITY_720P"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v5, Lozg;->j:Lozg;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v4, Lozs;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_9
    const-string v4, "QUALITY_720P_3X4"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    invoke-direct {v4, v7, v9, v8, v5}, Lozs;-><init>(Ljava/lang/String;IILozg;)V

    goto/32 :goto_24

    nop

    nop

    :goto_b
    const v1, 0x6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lozs;->h:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lozg;->f:Lozg;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v6, 0x0

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

    :goto_13
    const-string v5, "QUALITY_1080P"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v2, Lozg;->g:Lozg;

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

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    :goto_16
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v0, Lozs;->a:Lozs;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v3, v6, v2, v1}, Lozs;-><init>(Ljava/lang/String;IILozg;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v7, "QUALITY_1080P_3X4"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1b
    sput-object v3, Lozs;->d:Lozs;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3a

    nop

    nop

    :goto_1d
    const/4 v8, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v10, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->FtvhS:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    sget-object v4, Lozg;->i:Lozg;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    invoke-direct {v5, v10, v8, v9, v7}, Lozs;-><init>(Ljava/lang/String;IILozg;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v2, Lozs;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v7, 0x3

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

    :goto_24
    sput-object v4, Lozs;->e:Lozs;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_25
    sput-object v0, Lozs;->j:[Lozs;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28
    array-length v1, v0

    nop

    nop

    :goto_29
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2a
    new-instance v5, Lozs;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lt v6, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2c
    filled-new-array/range {v0 .. v5}, [Lozs;

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1, v3, v4, v5, v2}, Lozs;-><init>(Ljava/lang/String;IILozg;)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2e
    const/4 v9, 0x4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v5, 0x7d3

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_30
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_38

    nop

    nop

    :goto_31
    new-instance v1, Lozs;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_32
    sput-object v2, Lozs;->c:Lozs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, v2, Lozs;->k:Lozg;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v7, Lozg;->k:Lozg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_36
    const/16 v2, 0x7d2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v3, Lozg;->h:Lozg;

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

    :goto_38
    sput-object v0, Lozs;->i:Ljava/util/Map;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_39
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3a
    iget v3, v2, Lozs;->g:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3b
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    aget-object v2, v0, v6

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v0, Lozs;

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

    :goto_3f
    invoke-static {}, Lozs;->values()[Lozs;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v4, Lozs;->i:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_41
    sget-object v4, Lozs;->h:Ljava/util/Map;

    nop

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

    :goto_42
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_44
    sput-object v1, Lozs;->b:Lozs;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v3, "QUALITY_480P"

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_46
    const/4 v10, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_47
    const/16 v9, 0x7d5

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v3, v5, v7, v8, v4}, Lozs;-><init>(Ljava/lang/String;IILozg;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_49
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;IILozg;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput p3, p0, Lozs;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lozs;->k:Lozg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static a(Lozg;)Lozs;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lozs;->h:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lozs;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop
.end method

.method public static values()[Lozs;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lozs;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lozs;->j:[Lozs;

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
    return-object v0

    nop

    :goto_3
    check-cast v0, [Lozs;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
