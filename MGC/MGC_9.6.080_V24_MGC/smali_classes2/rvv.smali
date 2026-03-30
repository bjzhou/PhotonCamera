.class final Lrvv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:I

.field c:I

.field final synthetic d:Lrvw;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrvv;->d:Lrvw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, v0, Lrvw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget p0, p0, Lrvv;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrvw;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput p1, p0, Lrvv;->c:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrvv;->d:Lrvw;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lrvv;->b:I

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
    iget v0, p1, Lrvw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iput v0, p0, Lrvv;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lrvw;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrvv;->b:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    if-gez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lrvv;->c:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iget v2, p0, Lrvv;->b:I

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

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Lrvw;->b(I)I

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v1, 0x1b

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

    :goto_b
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lrvv;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Lrvv;->b:I

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

    :goto_e
    iget-object v1, p0, Lrvv;->d:Lrvw;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lrvv;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0}, Lrvw;->c(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_16
    iget-object v1, p0, Lrvv;->d:Lrvw;

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

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0}, Lrvv;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    iget v0, p0, Lrvv;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-gez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Lrvv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

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

    :goto_7
    iget v0, p0, Lrvv;->c:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lrvv;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lrvv;->d:Lrvw;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lrvv;->c:I

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    add-int/lit8 v0, v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Lrvv;->a:I

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

    :goto_14
    invoke-static {v0}, Lqrg;->y(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    const v1, 0x1

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

    :goto_17
    invoke-virtual {v1, v0}, Lrvw;->c(I)Ljava/lang/Object;

    move-result-object v0

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

    :goto_18
    iput v1, p0, Lrvv;->c:I

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

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Lrvw;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput v0, p0, Lrvv;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    :goto_1e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method
