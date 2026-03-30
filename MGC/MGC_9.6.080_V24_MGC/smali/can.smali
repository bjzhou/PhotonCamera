.class public final enum Lcan;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lcan;

.field public static final enum b:Lcan;

.field private static final synthetic c:[Lcan;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xe

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const v1, 0x9

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

    :goto_2
    new-instance v0, Lcan;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const-string v1, "SHOW_ORIGINAL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1, v2}, Lcan;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    sput-object v1, Lcan;->b:Lcan;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

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
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lcan;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_10
    invoke-direct {v1, v2, v3}, Lcan;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lcan;->c:[Lcan;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lcan;->a:Lcan;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    const-string v2, "SHOW_TRANSLATED"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    filled-new-array {v0, v1}, [Lcan;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

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

    nop

    nop

    nop
.end method

.method public static values()[Lcan;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    sget-object v0, Lcan;->c:[Lcan;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

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

    :goto_3
    check-cast v0, [Lcan;

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

    nop
.end method
