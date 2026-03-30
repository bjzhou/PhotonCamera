.class public final enum Lpof;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lpof;

.field public static final enum b:Lpof;

.field public static final enum c:Lpof;

.field public static final enum d:Lpof;

.field private static final synthetic f:[Lpof;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    const-string v6, "SIMPLE"

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-direct {v4, v5, v6, v3}, Lpof;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v2, v4, v5}, Lpof;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "EXTENDED"

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

    :goto_4
    sput-object v1, Lpof;->b:Lpof;

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

    :goto_5
    new-instance v4, Lpof;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, v6, v5, v4}, Lpof;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x80

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v4, Lpof;->d:Lpof;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    sput-object v0, Lpof;->a:Lpof;

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

    :goto_d
    goto/32 :goto_16

    nop

    :goto_e
    new-instance v2, Lpof;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    sput-object v2, Lpof;->c:Lpof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lpof;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "FULL"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    filled-new-array {v0, v1, v2, v4}, [Lpof;

    move-result-object v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lpof;

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

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    const/4 v6, 0x3

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

    :goto_18
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_1c
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    const-string v5, "NONE"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    invoke-direct {v0, v2, v3, v1}, Lpof;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sput-object v0, Lpof;->f:[Lpof;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

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

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lpof;->e:I

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lpof;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lpof;

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
    invoke-virtual {v0}, [Lpof;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    sget-object v0, Lpof;->f:[Lpof;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
