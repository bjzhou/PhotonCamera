.class abstract Lrvq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:I

.field c:I

.field d:I

.field final synthetic e:Lrvu;


# direct methods
.method public constructor <init>(Lrvu;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lrvu;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lrvq;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput p1, p0, Lrvq;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget v0, p1, Lrvu;->e:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lrvq;->e:Lrvu;

    nop

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

    :goto_7
    const/4 p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iput p1, p0, Lrvq;->c:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    iget p0, p0, Lrvq;->b:I

    nop

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

    nop

    :goto_3
    iget v0, v0, Lrvu;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrvq;->e:Lrvu;

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

    :goto_7
    if-eq v0, p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ljava/util/ConcurrentModificationException;

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
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrvq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

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
    if-gez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_6
    const/4 p0, 0x1

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
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lrvq;->e:Lrvu;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrvq;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

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

    :goto_3
    iget v2, p0, Lrvq;->c:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrvq;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_a
    iget v0, p0, Lrvq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Lrvq;->c:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    new-instance p0, Ljava/util/NoSuchElementException;

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

    :goto_f
    invoke-virtual {p0, v0}, Lrvq;->a(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    :goto_15
    iput v0, p0, Lrvq;->d:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Lrvu;->b(I)I

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lrvq;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Lrvu;->e(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    iget v0, p0, Lrvq;->d:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lrvq;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lrvq;->c:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v0}, Lrvu;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lrvq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lrvq;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, -0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Lrvq;->b:I

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

    :goto_17
    iget-object v1, p0, Lrvq;->e:Lrvu;

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

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_19
    iput v1, p0, Lrvq;->d:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Lqrg;->y(Z)V

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    if-gez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop
.end method
