.class final Lrxg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lrxh;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrxg;->a:Lrxh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

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

    nop

    :goto_2
    return-void

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v0, v0, Lrxi;->d:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Lrxh;->b:Lrxi;

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
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Lrxg;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrxh;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Lrxh;->b:Lrxi;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lrxg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lrxg;->e:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput v0, p0, Lrxg;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p1, Lrxi;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    iget p1, p1, Lrxi;->c:I

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

    :goto_9
    iput-object p1, p0, Lrxg;->a:Lrxh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lrxg;->d:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    iget v0, p1, Lrxi;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gtz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, -0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lrxg;->b:I

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

    :goto_11
    invoke-direct {p0}, Lrxg;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    iget p0, p0, Lrxg;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Lrxg;->b:I

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
    iput v1, p0, Lrxg;->c:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, -0x1

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

    :goto_3
    invoke-virtual {p0}, Lrxg;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    aget v1, v2, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0xd

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget-object v2, v2, Lrxi;->f:[I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, p0, Lrxg;->b:I

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

    :goto_c
    iget-object v2, v2, Lrxh;->b:Lrxi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lrxg;->a:Lrxh;

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

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Lrxh;->a(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lrxg;->e:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    :goto_15
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    iget-object v0, p0, Lrxg;->a:Lrxh;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Lrxg;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Lrxg;->e:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop
.end method

.method public final remove()V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lrxg;->c:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    iget-object v0, v0, Lrxh;->b:Lrxi;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lrxg;->a:Lrxh;

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

    nop

    :goto_8
    iget-object v0, p0, Lrxg;->a:Lrxh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, v2, Lrxi;->d:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lrxg;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    :goto_c
    invoke-static {v0}, Lqrg;->y(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v3, v2, Lrxi;->c:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, v2, Lrxh;->b:Lrxi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v3}, Lqrg;->g(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, p0, Lrxg;->c:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    aget-object v3, v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lrxg;->c:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    iget v0, p0, Lrxg;->b:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    :goto_1b
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    iget-object v3, v0, Lrxi;->a:[Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
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

    :goto_1f
    iget v2, p0, Lrxg;->c:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Lrxg;->d:I

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

    :goto_21
    invoke-virtual {v0, v2, v3}, Lrxi;->h(II)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_23
    invoke-direct {p0}, Lrxg;->166277962e993c138a6b1f0c9b571cc0m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_25
    if-eq v0, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method
