.class public final Lsgm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lsgn;

.field private b:I


# direct methods
.method public constructor <init>(Lsgn;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lsgm;->a:Lsgn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lsgm;->b:I

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

    nop

    :goto_3
    const/4 p1, 0x0

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

    :goto_4
    return-void

    nop
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-lt p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lsgn;->size()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lsgm;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lsgm;->a:Lsgn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lsgm;->a:Lsgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    if-lt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_4
    new-instance p0, Ljava/util/NoSuchElementException;

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

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    aget-object v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lsgm;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lsgn;->b()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    iput v0, p0, Lsgm;->b:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xa

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lsgm;->a:Lsgn;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Lsgo;->b:[Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    iget-object v1, v1, Lsgn;->b:Lsgo;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    return-object v1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_16
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Lsgn;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final remove()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
