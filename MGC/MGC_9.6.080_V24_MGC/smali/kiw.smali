.class public final enum Lkiw;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lkiw;

.field public static final enum b:Lkiw;

.field public static final enum c:Lkiw;

.field private static final synthetic d:[Lkiw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

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

    :goto_1
    const-string v1, "TOPSHOT_MODE"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

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

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lkiw;->d:[Lkiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "GROUPSHOT_MODE"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v3, v4}, Lkiw;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lkiw;->a:Lkiw;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    const-string v2, "LONGSHOT_MODE"

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

    nop

    :goto_a
    sput-object v2, Lkiw;->c:Lkiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lkiw;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {v0, v1, v2}, [Lkiw;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_12
    new-instance v2, Lkiw;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x19

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lkiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    :goto_18
    sput-object v1, Lkiw;->b:Lkiw;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v1, v2, v3}, Lkiw;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1, v2}, Lkiw;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static values()[Lkiw;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    sget-object v0, Lkiw;->d:[Lkiw;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lkiw;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lkiw;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
