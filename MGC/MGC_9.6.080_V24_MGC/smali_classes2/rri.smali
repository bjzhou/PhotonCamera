.class public final enum Lrri;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field public static final enum a:Lrri;

.field public static final enum b:Lrri;

.field public static final c:Ljava/util/Map;

.field private static final synthetic e:[Lrri;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    iget v4, v3, Lrri;->d:I

    nop

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

    :goto_1
    invoke-static {}, Lrri;->values()[Lrri;

    move-result-object v0

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

    nop

    :goto_2
    new-instance v0, Ljava/util/HashMap;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    const-string v1, "MONOCHROME"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lrri;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_24

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

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v4, "RGB"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v5, Lrri;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_e
    array-length v1, v0

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    :goto_10
    sput-object v0, Lrri;->e:[Lrri;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

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

    :goto_13
    sput-object v0, Lrri;->c:Ljava/util/Map;

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

    :goto_14
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lrri;->a:Lrri;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    filled-new-array {v0, v1}, [Lrri;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_19
    if-lt v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1, v2, v3}, Lrri;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    sput-object v1, Lrri;->b:Lrri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x16

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    invoke-direct {v1, v4, v3, v5}, Lrri;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    :goto_22
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lrri;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_f

    nop

    nop

    :goto_25
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
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

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput p3, p0, Lrri;->d:I

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

.method public static values()[Lrri;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lrri;

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

    :goto_1
    invoke-virtual {v0}, [Lrri;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lrri;->e:[Lrri;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop
.end method
