.class public final enum Lpog;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lpog;

.field public static final enum b:Lpog;

.field public static final enum c:Lpog;

.field private static final synthetic d:[Lpog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const-string v2, "BACK"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v2, Lpog;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const-string v3, "EXTERNAL"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v1, Lpog;->b:Lpog;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v2, v3}, Lpog;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v4, 0x2

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

    :goto_9
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2, v3, v4}, Lpog;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_13

    nop

    nop

    :goto_b
    sput-object v0, Lpog;->d:[Lpog;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_f
    new-instance v0, Lpog;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    const-string v1, "FRONT"

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    :goto_12
    filled-new-array {v0, v1, v2}, [Lpog;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    sput-object v2, Lpog;->c:Lpog;

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
    const v0, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v2}, Lpog;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

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

.method public static values()[Lpog;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    check-cast v0, [Lpog;

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
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lpog;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lpog;->d:[Lpog;

    nop

    goto/32 :goto_2

    nop

    nop
.end method
