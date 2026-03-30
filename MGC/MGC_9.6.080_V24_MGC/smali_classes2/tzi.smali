.class public final Ltzi;
.super Ltzk;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lucv;


# direct methods
.method public constructor <init>(Ltzm;)V
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

    :goto_1
    invoke-direct {p0, p1}, Ltzk;-><init>(Ltzm;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    goto/32 :goto_7

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-object v2

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ltzk;->a()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    new-instance v2, Ltzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iput v1, p0, Ltzk;->c:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    iput v2, p0, Ltzk;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Ltzk;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1d

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

    :goto_d
    add-int/lit8 v2, v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Ltzk;->a:Ltzm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    iget v2, v0, Ltzm;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v2, v0, v1}, Ltzj;-><init>(Ltzm;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_13
    iget v1, p0, Ltzk;->b:I

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

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_16
    goto/32 :goto_2

    nop

    :goto_17
    if-lt v1, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method
