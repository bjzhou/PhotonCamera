.class public Ldrk;
.super Ldrg;
.source "PG"


# instance fields
.field public ar:[Ldrg;

.field public as:I


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput v0, p0, Ldrk;->as:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ldrg;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-array v0, v0, [Ldrg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Ldrk;->ar:[Ldrg;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final T(Ljava/util/ArrayList;ILdrz;)V
    .locals 3

    goto/32 :goto_f

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

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-static {v1, p2, p1, p3}, Ldsw;->t(Ldrg;ILjava/util/ArrayList;Ldrz;)Ldrz;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_5
    goto :goto_d

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, p0, Ldrk;->as:I

    nop

    goto/32 :goto_19

    nop

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

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

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

    :goto_a
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    iget-object v2, p0, Ldrk;->ar:[Ldrg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    const v0, 0x1e

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, p0, Ldrk;->as:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, v2}, Ldrz;->d(Ldrg;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget-object v2, v2, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Ldrk;->ar:[Ldrg;

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

    nop

    nop
.end method
