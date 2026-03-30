.class public final Lsat;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Lsan;

.field private final b:Ljava/util/Iterator;

.field private c:Lsam;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lsan;Ljava/util/Iterator;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsat;->a:Lsan;

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

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lsat;->b:Ljava/util/Iterator;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

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

    :goto_3
    iget v0, p0, Lsat;->d:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto :goto_8

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

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lsat;->b:Ljava/util/Iterator;

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

    :goto_b
    if-nez p0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lsat;->c:Lsam;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lsat;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lsat;->e:I

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lsat;->b:Ljava/util/Iterator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lsat;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

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

    :goto_f
    iput-boolean v0, p0, Lsat;->f:Z

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    new-instance p0, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lsat;->c:Lsam;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0}, Lsam;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    iput v0, p0, Lsat;->d:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-interface {p0}, Lsam;->b()Ljava/lang/Object;

    move-result-object p0

    nop

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

    :goto_16
    check-cast v0, Lsam;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final remove()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

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

    :goto_1
    iget v0, p0, Lsat;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    const/4 v1, 0x1

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
    invoke-interface {v1}, Lsam;->b()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lsat;->e:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v1, 0xe

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_c
    iput v0, p0, Lsat;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v0, v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iget-object v1, p0, Lsat;->c:Lsam;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_1a

    nop

    nop

    :goto_12
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    iget-boolean v0, p0, Lsat;->f:Z

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lsat;->b:Ljava/util/Iterator;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Lqrg;->y(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0, v1}, Lsan;->remove(Ljava/lang/Object;)Z

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    iput-boolean v0, p0, Lsat;->f:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lsat;->a:Lsan;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method
