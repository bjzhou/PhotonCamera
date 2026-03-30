.class public final enum Leap;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Leap;

.field public static final Companion:Leao;

.field public static final enum ON_ANY:Leap;

.field public static final enum ON_CREATE:Leap;

.field public static final enum ON_DESTROY:Leap;

.field public static final enum ON_PAUSE:Leap;

.field public static final enum ON_RESUME:Leap;

.field public static final enum ON_START:Leap;

.field public static final enum ON_STOP:Leap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    goto/32 :goto_8

    nop

    nop

    :goto_0
    new-instance v3, Leap;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v5, Leap;->ON_DESTROY:Leap;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v6, 0x4

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

    :goto_3
    invoke-direct {v3, v4, v5}, Leap;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, v2, v3}, Leap;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_24

    nop

    nop

    :goto_5
    const/4 v8, 0x6

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

    :goto_6
    sput-object v0, Leap;->Companion:Leao;

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

    :goto_7
    sput-object v4, Leap;->ON_STOP:Leap;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v3, "ON_RESUME"

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2}, Leap;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_c
    invoke-direct {v4, v5, v6}, Leap;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    const-string v7, "ON_ANY"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v4, Leap;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v7, 0x5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v2, v3, v4}, Leap;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "ON_CREATE"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    const-string v4, "ON_PAUSE"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_19
    sput-object v2, Leap;->ON_RESUME:Leap;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
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

    :goto_1c
    new-instance v0, Leap;

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

    :goto_1d
    sput-object v6, Leap;->ON_ANY:Leap;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    filled-new-array/range {v0 .. v6}, [Leap;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    :goto_20
    sput-object v0, Leap;->ON_CREATE:Leap;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_21
    const-string v6, "ON_DESTROY"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v6, v7, v8}, Leap;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    const-string v5, "ON_STOP"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    sput-object v1, Leap;->ON_START:Leap;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v5, Leap;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0}, Leao;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    sput-object v0, Leap;->$VALUES:[Leap;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v4, 0x2

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

    :goto_2a
    invoke-direct {v5, v6, v7}, Leap;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Leao;

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

    :goto_2c
    sput-object v3, Leap;->ON_PAUSE:Leap;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    new-instance v6, Leap;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v2, Leap;

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

    :goto_2f
    const-string v2, "ON_START"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v1, Leap;

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
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static values()[Leap;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Leap;->$VALUES:[Leap;

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
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

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
    check-cast v0, [Leap;

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
.end method


# virtual methods
.method public final a()Leaq;
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x3

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
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_5
    const v1, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_6

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

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x3

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

    :goto_10
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    :goto_14
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p0, Leaq;->e:Leaq;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    :goto_18
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    if-nez v0, :cond_3

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_1f
    sget-object p0, Leaq;->a:Leaq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p0, Leaq;->d:Leaq;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Leap;->ordinal()I

    move-result v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-ne v0, v1, :cond_5

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

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_27

    nop

    nop

    :goto_25
    const-string v1, " has no target state"

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eq v0, v1, :cond_6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p0, Leaq;->c:Leaq;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method
