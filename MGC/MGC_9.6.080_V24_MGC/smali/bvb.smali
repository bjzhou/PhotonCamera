.class public final Lbvb;
.super Lbva;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Lbva;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lbva;->b:I

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

    :goto_3
    iput v1, p0, Lbva;->b:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    return-object v1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    aget-object p0, p0, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

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

    :goto_a
    new-instance v1, Lbug;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lbva;->a:[Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v1, v0, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2, p0}, Lbug;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v2, p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
