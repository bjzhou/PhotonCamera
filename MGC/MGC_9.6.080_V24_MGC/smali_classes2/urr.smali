.class public final Lurr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lurq;

.field private static final b:I

.field private static final c:[Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lurq;

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

    nop

    :goto_4
    sput-object v2, Lurr;->c:[Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v2, v1, v1, v1}, Lurq;-><init>([BIIZ)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    new-array v2, v1, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lurr;->a:Lurq;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    :goto_f
    aput-object v3, v2, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    :goto_15
    new-array v2, v0, [Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    add-int/2addr v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_1c
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sput v0, Lurr;->b:I

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

    :goto_1e
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop
.end method

.method public static final a()Lurq;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, v2, Lurq;->f:Lurq;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lurq;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    return-object v2

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const v0, 0x7

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

    nop

    :goto_6
    iput v0, v2, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lurr;->c()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

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

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x2

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

    :goto_11
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    sget-object v1, Lurr;->a:Lurq;

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

    :goto_13
    check-cast v2, Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v2, v1, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Lurq;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object v0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    :goto_1a
    iput-object v1, v2, Lurq;->f:Lurq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Lurq;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

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
.end method

.method public static final b(Lurq;)V
    .locals 5

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    const/high16 v4, 0x10000

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_2
    iput-object v2, p0, Lurq;->f:Lurq;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v1, p0, Lurq;->b:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lurq;->f:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    add-int/lit16 v3, v3, 0x2000

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    sget-object v1, Lurr;->a:Lurq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lurr;->c()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iput v3, p0, Lurq;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    if-ne v2, v1, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_29

    nop

    :goto_14
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_22

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_17
    iget v3, v2, Lurq;->c:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    if-ge v3, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "Failed requirement."

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

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    check-cast v2, Lurq;

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
    const v0, 0x14

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_25

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    iget-boolean v0, p0, Lurq;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    :goto_26
    goto/16 :goto_e

    nop

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v3, v1

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lurq;->g:Lurq;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final c()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-long/2addr v2, v4

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

    :goto_1
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    aget-object v0, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    and-long/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x15

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

    :goto_9
    return-object v0

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget v2, Lurr;->b:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lurr;->c:[Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    const-wide/16 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    long-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-long v2, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
