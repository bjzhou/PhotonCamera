.class public abstract Lnag;
.super Lnaq;

# interfaces
.implements Lnaz;


# direct methods
.method protected constructor <init>(Ljava/util/logging/Level;)V
    .locals 0

    invoke-direct {p0, p1}, Lnaq;-><init>(Ljava/util/logging/Level;)V

    return-void
.end method


# virtual methods
.method protected final a()Lndu;
    .locals 1

    sget-object v0, Lnds;->a:Lndw;

    return-object v0
.end method

.method protected final b(Lnau;)Z
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lnaq;->j()Lnbu;

    move-result-object v1

    invoke-virtual {v1}, Lnbu;->b()I

    move-result v2

    const/4 v8, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Lnbu;->c(I)Lnbc;

    move-result-object v4

    iget-object v4, v4, Lnbc;->a:Ljava/lang/String;

    const-string v5, "eye3tag"

    if-ne v4, v5, :cond_0

    sget-object v2, Lnao;->a:Lnbc;

    invoke-virtual {v1, v2}, Lnbu;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lnao;->g:Lnbc;

    invoke-virtual {v1, v2}, Lnbu;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lnao;->g:Lnbc;

    sget-object v2, Lnbe;->a:Lnbe;

    invoke-virtual {v0, v1, v2}, Lnaq;->n(Lnbc;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, v0, Lnaq;->c:Lnap;

    const/4 v9, 0x1

    if-eqz v1, :cond_13

    const/4 v10, 0x0

    if-eqz v7, :cond_c

    sget-object v2, Lnao;->b:Lnbc;

    invoke-virtual {v1, v2}, Lnap;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/Integer;

    iget-object v1, v0, Lnaq;->c:Lnap;

    sget-object v2, Lnao;->c:Lnbc;

    invoke-virtual {v1, v2}, Lnap;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lnaw;

    iget-object v13, v0, Lnaq;->c:Lnap;

    sget-object v14, Lnax;->d:Llyd;

    iget-object v1, v14, Llyd;->a:Ljava/lang/Object;

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance v15, Lnax;

    invoke-direct {v15}, Lnax;-><init>()V

    iget-object v1, v14, Llyd;->a:Ljava/lang/Object;

    check-cast v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v7, v15}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_5

    :cond_3
    iget v6, v13, Lnap;->b:I

    move-object v1, v10

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_7

    sget-object v2, Lnao;->d:Lnbc;

    invoke-virtual {v13, v5}, Lnbu;->c(I)Lnbc;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnbc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v13, v5}, Lnbu;->e(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v2, v4, Lnba;

    if-nez v2, :cond_4

    move/from16 v17, v5

    move/from16 v18, v6

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    new-instance v16, Llkq;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v20, v4

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v5, v18

    move/from16 v18, v6

    move-object/from16 v6, v19

    invoke-direct/range {v1 .. v6}, Llkq;-><init>(Llyd;Lnau;I[B[B)V

    goto :goto_3

    :cond_5
    move-object/from16 v20, v4

    move/from16 v17, v5

    move/from16 v18, v6

    :goto_3
    move-object/from16 v4, v20

    check-cast v4, Lnba;

    invoke-virtual {v4}, Lnba;->a()V

    goto :goto_4

    :cond_6
    move/from16 v17, v5

    move/from16 v18, v6

    :goto_4
    add-int/lit8 v5, v17, 0x1

    move/from16 v6, v18

    goto :goto_2

    :cond_7
    move-object v1, v15

    :goto_5
    check-cast v1, Lnax;

    const-wide/16 v2, 0x0

    if-eqz v11, :cond_9

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Lnax;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v5

    int-to-long v13, v4

    rem-long/2addr v5, v13

    cmp-long v4, v5, v2

    if-nez v4, :cond_8

    goto :goto_6

    :cond_8
    goto/16 :goto_d

    :cond_9
    :goto_6
    if-eqz v12, :cond_c

    iget-wide v4, v0, Lnaq;->b:J

    iget-object v6, v1, Lnax;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    iget-object v11, v12, Lnaw;->a:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0x2710

    invoke-virtual {v11, v13, v14}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v13

    add-long/2addr v13, v6

    cmp-long v11, v13, v2

    if-ltz v11, :cond_b

    cmp-long v11, v4, v13

    if-gez v11, :cond_a

    cmp-long v11, v6, v2

    if-nez v11, :cond_b

    goto :goto_7

    :cond_a
    move-wide v2, v6

    :goto_7
    iget-object v6, v1, Lnax;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v1, v1, Lnax;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v1

    iput v1, v12, Lnaw;->b:I

    goto :goto_8

    :cond_b
    iget-object v1, v1, Lnax;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/16 :goto_d

    :cond_c
    :goto_8
    iget-object v1, v0, Lnaq;->c:Lnap;

    sget-object v2, Lnao;->g:Lnbc;

    invoke-virtual {v1, v2}, Lnap;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbe;

    if-eqz v1, :cond_12

    sget-object v2, Lnao;->g:Lnbc;

    iget-object v3, v0, Lnaq;->c:Lnap;

    if-eqz v3, :cond_f

    invoke-virtual {v3, v2}, Lnap;->a(Lnbc;)I

    move-result v4

    if-ltz v4, :cond_f

    add-int/2addr v4, v4

    add-int/lit8 v5, v4, 0x2

    :goto_9
    iget v6, v3, Lnap;->b:I

    add-int v7, v6, v6

    if-ge v5, v7, :cond_e

    iget-object v6, v3, Lnap;->a:[Ljava/lang/Object;

    aget-object v6, v6, v5

    invoke-virtual {v6, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    iget-object v7, v3, Lnap;->a:[Ljava/lang/Object;

    aput-object v6, v7, v4

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    aget-object v8, v7, v8

    aput-object v8, v7, v6

    add-int/lit8 v4, v4, 0x2

    :cond_d
    add-int/lit8 v5, v5, 0x2

    goto :goto_9

    :cond_e
    sub-int v2, v5, v4

    shr-int/2addr v2, v9

    sub-int/2addr v6, v2

    iput v6, v3, Lnap;->b:I

    :goto_a
    if-ge v4, v5, :cond_f

    iget-object v2, v3, Lnap;->a:[Ljava/lang/Object;

    add-int/lit8 v6, v4, 0x1

    aput-object v10, v2, v4

    move v4, v6

    goto :goto_a

    :cond_f
    new-instance v2, Lnav;

    invoke-virtual/range {p0 .. p0}, Lnaq;->j()Lnbu;

    move-result-object v3

    sget-object v4, Lnao;->a:Lnbc;

    invoke-virtual {v3, v4}, Lnbu;->d(Lnbc;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    iget v4, v1, Lnbe;->f:I

    if-gtz v4, :cond_11

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    goto :goto_b

    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid maximum depth: 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    :goto_b
    sget-object v5, Lndx;->a:Lnea;

    const-class v6, Lnaq;

    invoke-interface {v5, v6, v4}, Lnea;->b(Ljava/lang/Class;I)[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lnav;-><init>(Ljava/lang/Throwable;Lnbe;[Ljava/lang/StackTraceElement;)V

    sget-object v1, Lnao;->a:Lnbc;

    invoke-virtual {v0, v1, v2}, Lnaq;->n(Lnbc;Ljava/lang/Object;)V

    goto :goto_c

    :cond_12
    :goto_c
    const/4 v8, 0x1

    goto :goto_d

    :cond_13
    const/4 v8, 0x1

    :goto_d
    return v8
.end method
