.class public final Ltzl;
.super Ltzk;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;
.implements Lucv;


# instance fields
.field private final synthetic d:I


# direct methods
.method public constructor <init>(Ltzm;I)V
    .locals 0

    goto/32 :goto_1

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
    iput p2, p0, Ltzl;->d:I

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

    :goto_2
    invoke-direct {p0, p1}, Ltzk;-><init>(Ltzm;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltzm;I[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Ltzl;->d:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ltzk;-><init>(Ltzm;)V

    goto/32 :goto_2

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


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    goto/32 :goto_1d

    nop

    :goto_1
    const v0, 0xa

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

    :goto_2
    iget v0, p0, Ltzk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    iput v2, p0, Ltzk;->b:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Ltzk;->a:Ltzm;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    add-int/lit8 v2, v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    iget-object v1, p0, Ltzk;->a:Ltzm;

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

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_c
    iput v2, p0, Ltzk;->b:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v2, v1, Ltzm;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Ltzk;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v2, v1, Ltzm;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    aget-object v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Ltzk;->a()V

    goto/32 :goto_29

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_11

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ltzk;->b()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v1, v1, Ltzm;->c:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Ltzk;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lt v0, v2, :cond_2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ltzk;->a()V

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    :goto_1d
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Ltzk;->b()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    if-lt v0, v2, :cond_3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object v0

    nop

    :goto_21
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Ltzl;->d:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_26
    aget-object v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v2, v0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_28
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_29
    iget v0, p0, Ltzk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v1, Ltzm;->b:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    return-object v0

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_28

    nop

    nop
.end method
