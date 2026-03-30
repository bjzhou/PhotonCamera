.class public final enum Lobb;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lobb;

.field public static final enum b:Lobb;

.field private static final synthetic d:[Lobb;


# instance fields
.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Lobb;->a:Lobb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    :goto_3
    const-string v1, "CLOCKWISE"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lobb;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    filled-new-array {v0, v1}, [Lobb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, v2, v2}, Lobb;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    :goto_9
    new-instance v1, Lobb;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2, v3, v3}, Lobb;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_c
    sput-object v1, Lobb;->b:Lobb;

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

    :goto_d
    sput-object v0, Lobb;->d:[Lobb;

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

    :goto_e
    const/4 v3, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v2, "COUNTER_CLOCKWISE"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

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
    iput p3, p0, Lobb;->c:I

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
.end method

.method public static values()[Lobb;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    check-cast v0, [Lobb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    sget-object v0, Lobb;->d:[Lobb;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, [Lobb;->clone()Ljava/lang/Object;

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

    nop

    nop
.end method
