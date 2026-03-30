.class final Lj$/util/stream/t1;
.super Lj$/util/stream/j1;
.source "SourceFile"


# instance fields
.field final synthetic n:J

.field final synthetic o:J


# direct methods
.method constructor <init>(Lj$/util/stream/k1;IJJ)V
    .locals 0

    iput-wide p3, p0, Lj$/util/stream/t1;->n:J

    iput-wide p5, p0, Lj$/util/stream/t1;->o:J

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final r(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->i(Lj$/util/Spliterator;)J

    move-result-wide v0

    iget-wide v4, v9, Lj$/util/stream/t1;->o:J

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    cmp-long v2, v0, v7

    if-lez v2, :cond_6

    const/16 v2, 0x4000

    invoke-interface {v3, v2}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/b;->l()Lj$/util/stream/N1;

    move-result-object v0

    iget-wide v13, v9, Lj$/util/stream/t1;->n:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v11, v4, v7

    if-ltz v11, :cond_0

    add-long/2addr v4, v13

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    cmp-long v11, v4, v7

    if-ltz v11, :cond_1

    move-wide v15, v4

    goto :goto_1

    :cond_1
    move-wide v15, v1

    :goto_1
    sget-object v1, Lj$/util/stream/u1;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v10, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    new-instance v0, Lj$/util/stream/c2;

    move-object v12, v3

    check-cast v12, Lj$/util/G;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lj$/util/stream/f2;-><init>(Lj$/util/Q;JJ)V

    :goto_2
    move-object/from16 v2, p1

    goto :goto_3

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Unknown shape "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lj$/util/stream/e2;

    move-object v12, v3

    check-cast v12, Lj$/util/N;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lj$/util/stream/f2;-><init>(Lj$/util/Q;JJ)V

    goto :goto_2

    :cond_4
    new-instance v0, Lj$/util/stream/d2;

    move-object v12, v3

    check-cast v12, Lj$/util/J;

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lj$/util/stream/f2;-><init>(Lj$/util/Q;JJ)V

    goto :goto_2

    :cond_5
    new-instance v7, Lj$/util/stream/g2;

    move-object v0, v7

    move-object/from16 v1, p2

    move-wide v2, v13

    move-wide v4, v15

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/g2;-><init>(Lj$/util/Spliterator;JJ)V

    goto :goto_2

    :goto_3
    invoke-static {v2, v0, v10, v6}, Lj$/util/stream/M;->B(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object v0

    return-object v0

    :cond_6
    move-object/from16 v2, p1

    sget-object v11, Lj$/util/stream/M1;->ORDERED:Lj$/util/stream/M1;

    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/b;->m()I

    move-result v12

    invoke-virtual {v11, v12}, Lj$/util/stream/M1;->s(I)Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->A(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v13

    iget-wide v2, v9, Lj$/util/stream/t1;->n:J

    cmp-long v11, v2, v0

    if-gtz v11, :cond_8

    cmp-long v11, v4, v7

    sub-long/2addr v0, v2

    if-ltz v11, :cond_7

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_7
    move-wide v4, v0

    move-wide/from16 v16, v4

    move-wide v14, v7

    goto :goto_4

    :cond_8
    move-wide v14, v2

    move-wide/from16 v16, v4

    :goto_4
    new-instance v0, Lj$/util/stream/i2;

    move-object v12, v0

    invoke-direct/range {v12 .. v17}, Lj$/util/stream/i2;-><init>(Lj$/util/Spliterator;JJ)V

    invoke-static {v9, v0, v10, v6}, Lj$/util/stream/M;->B(Lj$/util/stream/b;Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v10, Lj$/util/stream/v1;

    iget-wide v7, v9, Lj$/util/stream/t1;->n:J

    iget-wide v11, v9, Lj$/util/stream/t1;->o:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide v5, v7

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/v1;-><init>(Lj$/util/stream/t1;Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-static {v10}, Lj$/time/e;->a(Lj$/util/stream/v1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Z;

    return-object v0
.end method

.method final s(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 16

    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->i(Lj$/util/Spliterator;)J

    move-result-wide v0

    iget-wide v2, v9, Lj$/util/stream/t1;->o:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_2

    const/16 v6, 0x4000

    move-object/from16 v7, p2

    invoke-interface {v7, v6}, Lj$/util/Spliterator;->hasCharacteristics(I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v0, Lj$/util/stream/g2;

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->A(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v11

    iget-wide v12, v9, Lj$/util/stream/t1;->n:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    add-long/2addr v2, v12

    goto :goto_0

    :cond_0
    move-wide v2, v6

    :goto_0
    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    move-wide v14, v2

    goto :goto_1

    :cond_1
    move-wide v14, v6

    :goto_1
    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lj$/util/stream/g2;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v0

    :cond_2
    move-object/from16 v7, p2

    :cond_3
    sget-object v6, Lj$/util/stream/M1;->ORDERED:Lj$/util/stream/M1;

    invoke-virtual/range {p1 .. p1}, Lj$/util/stream/b;->m()I

    move-result v8

    invoke-virtual {v6, v8}, Lj$/util/stream/M1;->s(I)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual/range {p1 .. p2}, Lj$/util/stream/b;->A(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object v11

    iget-wide v6, v9, Lj$/util/stream/t1;->n:J

    cmp-long v8, v6, v0

    if-gtz v8, :cond_5

    cmp-long v8, v2, v4

    sub-long/2addr v0, v6

    if-ltz v8, :cond_4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_4
    move-wide v2, v0

    move-wide v14, v2

    move-wide v12, v4

    goto :goto_2

    :cond_5
    move-wide v14, v2

    move-wide v12, v6

    :goto_2
    new-instance v0, Lj$/util/stream/i2;

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lj$/util/stream/i2;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v0

    :cond_6
    new-instance v10, Lj$/util/stream/v1;

    new-instance v4, Lj$/util/stream/n;

    const/16 v0, 0xa

    invoke-direct {v4, v0}, Lj$/util/stream/n;-><init>(I)V

    iget-wide v5, v9, Lj$/util/stream/t1;->n:J

    iget-wide v11, v9, Lj$/util/stream/t1;->o:J

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v7, v11

    invoke-direct/range {v0 .. v8}, Lj$/util/stream/v1;-><init>(Lj$/util/stream/t1;Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;JJ)V

    invoke-static {v10}, Lj$/time/e;->a(Lj$/util/stream/v1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/Z;

    invoke-interface {v0}, Lj$/util/stream/Z;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 0

    new-instance p1, Lj$/util/stream/s1;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/s1;-><init>(Lj$/util/stream/t1;Lj$/util/stream/r1;)V

    return-object p1
.end method
