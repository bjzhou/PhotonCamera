.class public final enum Legc;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Legc;

.field public static final enum b:Legc;

.field public static final enum c:Legc;

.field private static final synthetic d:[Legc;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    const-string v2, "IMMEDIATE"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "DEFERRED"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, v3, v4}, Legc;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v2}, Legc;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    new-instance v0, Legc;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    sput-object v0, Legc;->a:Legc;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    const-string v3, "EXCLUSIVE"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    filled-new-array {v0, v1, v2}, [Legc;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    sput-object v0, Legc;->d:[Legc;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Legc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v2, v3}, Legc;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    const v0, 0xb

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    sput-object v2, Legc;->c:Legc;

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

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    new-instance v1, Legc;

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

    :goto_19
    sput-object v1, Legc;->b:Legc;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_1

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static values()[Legc;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    check-cast v0, [Legc;

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
    sget-object v0, Legc;->d:[Legc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
