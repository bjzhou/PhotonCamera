.class public final enum Liuc;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Liuc;

.field public static final enum b:Liuc;

.field private static final synthetic c:[Liuc;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "RED"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Liuc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    sput-object v0, Liuc;->c:[Liuc;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Liuc;->a:Liuc;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    const v0, 0xb

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

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
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0, v1}, [Liuc;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_a
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const-string v1, "WHITE"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    sput-object v1, Liuc;->b:Liuc;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    invoke-direct {v1, v2, v3}, Liuc;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, v2}, Liuc;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_11
    new-instance v1, Liuc;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_0

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

.method public static values()[Liuc;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    check-cast v0, [Liuc;

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

    :goto_1
    invoke-virtual {v0}, [Liuc;->clone()Ljava/lang/Object;

    move-result-object v0

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

    nop

    nop

    :goto_3
    sget-object v0, Liuc;->c:[Liuc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
