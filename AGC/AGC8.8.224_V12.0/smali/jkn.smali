.class public abstract Ljkn;
.super Ljkf;


# instance fields
.field private a:Lnto;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljkf;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Lkte;
.end method

.method public final c(Ljava/lang/String;[B[BLjke;Lntt;)V
    .locals 21

    move-object/from16 v7, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    move-object/from16 v2, p4

    const-string v3, "type.googleapis.com/intelligence.brella.proto.examplestore.ResumptionPoint"

    const-string v5, "type.googleapis.com/intelligence.brella.proto.examplestore.SelectionCriteria"

    const-string v6, "ExampleStoreSvc"

    iget-object v8, v7, Ljkn;->a:Lnto;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v12, Lnvi;->c:Lnvi;

    array-length v13, v1

    invoke-static {v12, v1, v11, v13, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v0

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Lnvi;

    iget-object v12, v0, Lnvi;->a:Ljava/lang/String;

    const-string v13, "type.googleapis.com/fedsql.SelectionCriteria"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, v0, Lnvi;->b:Lnvt;

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v12

    sget-object v13, Lntg;->d:Lntg;

    invoke-virtual {v0}, Lnvt;->l()Lnvy;

    move-result-object v0

    invoke-virtual {v13}, Lnws;->P()Lnws;

    move-result-object v13
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    sget-object v14, Lnyh;->a:Lnyh;

    invoke-virtual {v14, v13}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v14

    invoke-static {v0}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v15

    invoke-interface {v14, v13, v15, v12}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v14, v13}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lnyz; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v0, v11}, Lnvy;->z(I)V
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {v13}, Lnws;->ae(Lnws;)V

    check-cast v13, Lntg;

    sget-object v14, Lnto;->b:Lloi;

    new-array v0, v10, [Ljava/lang/Object;

    aput-object v13, v0, v11

    const-string v18, "Parsed selection criteria: %s"

    sget-object v15, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    iget-object v12, v14, Lloi;->b:Ljava/lang/Object;

    move-object/from16 v16, v12

    check-cast v16, Ljava/lang/String;

    const/16 v17, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Lloi;->j(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v9, v13

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v12, v0

    throw v12

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    instance-of v12, v12, Lnxd;

    if-eqz v12, :cond_1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_1
    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    instance-of v12, v12, Lnxd;

    if-eqz v12, :cond_2

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_2
    new-instance v12, Lnxd;

    invoke-direct {v12, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v12

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lnyz;->a()Lnxd;

    move-result-object v0

    throw v0

    :catch_4
    move-exception v0

    iget-boolean v12, v0, Lnxd;->a:Z

    if-eqz v12, :cond_3

    new-instance v12, Lnxd;

    invoke-direct {v12, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object v0, v12

    :cond_3
    throw v0
    :try_end_3
    .catch Lnxd; {:try_start_3 .. :try_end_3} :catch_5

    :catch_5
    move-exception v0

    move-object v15, v0

    sget-object v12, Lnto;->b:Lloi;

    sget-object v13, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget-object v0, v12, Lloi;->b:Ljava/lang/Object;

    const-string v16, "Could not parse SQL selection criteria."

    new-array v14, v11, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v14

    move-object v14, v0

    invoke-virtual/range {v12 .. v17}, Lloi;->j(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x2

    if-nez v9, :cond_1d

    sget-object v8, Lnto;->b:Lloi;

    const-string v9, "Not a SQL query; caller should handle query."

    invoke-virtual {v8, v9}, Lloi;->h(Ljava/lang/String;)V

    const/16 v8, 0xa

    :try_start_4
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v9

    sget-object v12, Lnvi;->c:Lnvi;

    array-length v13, v1

    invoke-static {v12, v1, v11, v13, v9}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v1

    invoke-static {v1}, Lnws;->ae(Lnws;)V

    check-cast v1, Lnvi;
    :try_end_4
    .catch Lnxd; {:try_start_4 .. :try_end_4} :catch_13

    :try_start_5
    iget-object v9, v1, Lnvi;->a:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9
    :try_end_5
    .catch Lnxd; {:try_start_5 .. :try_end_5} :catch_12

    const-string v12, "Incorrect type url: %s, expected: %s"

    if-nez v9, :cond_5

    :try_start_6
    iget-object v9, v1, Lnvi;->a:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Lnxd;

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, v1, Lnvi;->a:Ljava/lang/String;

    aput-object v1, v0, v11

    aput-object v5, v0, v10

    invoke-static {v12, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_1
    iget-object v1, v1, Lnvi;->b:Lnvt;

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v5

    sget-object v9, Lnts;->h:Lnts;

    invoke-virtual {v1}, Lnvt;->l()Lnvy;

    move-result-object v1

    invoke-virtual {v9}, Lnws;->P()Lnws;

    move-result-object v9
    :try_end_6
    .catch Lnxd; {:try_start_6 .. :try_end_6} :catch_12

    :try_start_7
    sget-object v13, Lnyh;->a:Lnyh;

    invoke-virtual {v13, v9}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v13

    invoke-static {v1}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v14

    invoke-interface {v13, v9, v14, v5}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v13, v9}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_7
    .catch Lnxd; {:try_start_7 .. :try_end_7} :catch_11
    .catch Lnyz; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_e

    :try_start_8
    invoke-virtual {v1, v11}, Lnvy;->z(I)V
    :try_end_8
    .catch Lnxd; {:try_start_8 .. :try_end_8} :catch_d

    :try_start_9
    invoke-static {v9}, Lnws;->ae(Lnws;)V

    move-object v1, v9

    check-cast v1, Lnts;

    iget-object v5, v1, Lnts;->e:Lnyy;

    if-nez v5, :cond_6

    sget-object v5, Lnyy;->c:Lnyy;

    :cond_6
    iget-wide v13, v5, Lnyy;->a:J

    const-wide/16 v15, 0x0

    cmp-long v5, v13, v15

    if-ltz v5, :cond_19

    iget-object v5, v1, Lnts;->e:Lnyy;

    if-nez v5, :cond_7

    sget-object v9, Lnyy;->c:Lnyy;

    goto :goto_2

    :cond_7
    move-object v9, v5

    :goto_2
    iget v9, v9, Lnyy;->b:I

    if-ltz v9, :cond_18

    if-nez v5, :cond_8

    sget-object v9, Lnyy;->c:Lnyy;

    goto :goto_3

    :cond_8
    move-object v9, v5

    :goto_3
    iget v9, v9, Lnyy;->b:I

    const v13, 0x3b9ac9ff

    if-gt v9, v13, :cond_18

    iget-object v9, v1, Lnts;->f:Lnyy;

    if-nez v9, :cond_9

    sget-object v14, Lnyy;->c:Lnyy;

    goto :goto_4

    :cond_9
    move-object v14, v9

    :goto_4
    move-object/from16 p2, v1

    iget-wide v0, v14, Lnyy;->a:J

    cmp-long v14, v0, v15

    if-ltz v14, :cond_17

    if-nez v9, :cond_a

    sget-object v0, Lnyy;->c:Lnyy;

    goto :goto_5

    :cond_a
    move-object v0, v9

    :goto_5
    iget v0, v0, Lnyy;->b:I

    if-ltz v0, :cond_16

    if-nez v9, :cond_b

    sget-object v0, Lnyy;->c:Lnyy;

    goto :goto_6

    :cond_b
    move-object v0, v9

    :goto_6
    iget v0, v0, Lnyy;->b:I

    if-gt v0, v13, :cond_16

    if-nez v9, :cond_c

    sget-object v9, Lnyy;->c:Lnyy;

    goto :goto_7

    :cond_c
    :goto_7
    iget-wide v0, v9, Lnyy;->a:J

    if-nez v5, :cond_d

    sget-object v5, Lnyy;->c:Lnyy;

    goto :goto_8

    :cond_d
    :goto_8
    iget-wide v13, v5, Lnyy;->a:J
    :try_end_9
    .catch Lnxd; {:try_start_9 .. :try_end_9} :catch_12

    cmp-long v5, v0, v13

    if-ltz v5, :cond_15

    :try_start_a
    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v0

    sget-object v1, Lnvi;->c:Lnvi;

    array-length v5, v4

    invoke-static {v1, v4, v11, v5, v0}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v0

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Lnvi;
    :try_end_a
    .catch Lnxd; {:try_start_a .. :try_end_a} :catch_c

    :try_start_b
    sget-object v1, Lnvi;->c:Lnvi;

    invoke-virtual {v0, v1}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lnvi;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_9

    :cond_e
    new-instance v1, Lnxd;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lnvi;->a:Ljava/lang/String;

    aput-object v0, v4, v11

    aput-object v3, v4, v10

    invoke-static {v12, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :goto_9
    iget-object v0, v0, Lnvi;->b:Lnvt;

    invoke-static {}, Lnwh;->a()Lnwh;

    move-result-object v1

    sget-object v3, Lntr;->c:Lntr;

    invoke-virtual {v0}, Lnvt;->l()Lnvy;

    move-result-object v0

    invoke-virtual {v3}, Lnws;->P()Lnws;

    move-result-object v3
    :try_end_b
    .catch Lnxd; {:try_start_b .. :try_end_b} :catch_b

    :try_start_c
    sget-object v4, Lnyh;->a:Lnyh;

    invoke-virtual {v4, v3}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v4

    invoke-static {v0}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object v5

    invoke-interface {v4, v3, v5, v1}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v4, v3}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_c
    .catch Lnxd; {:try_start_c .. :try_end_c} :catch_a
    .catch Lnyz; {:try_start_c .. :try_end_c} :catch_9
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_7

    :try_start_d
    invoke-virtual {v0, v11}, Lnvy;->z(I)V
    :try_end_d
    .catch Lnxd; {:try_start_d .. :try_end_d} :catch_6

    :try_start_e
    invoke-static {v3}, Lnws;->ae(Lnws;)V

    move-object v0, v3

    check-cast v0, Lntr;

    iget v1, v0, Lntr;->a:I

    if-ne v1, v10, :cond_10

    iget-object v1, v0, Lntr;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_e
    .catch Lnxd; {:try_start_e .. :try_end_e} :catch_b

    goto :goto_a

    :cond_10
    move-wide v3, v15

    :goto_a
    cmp-long v1, v3, v15

    if-ltz v1, :cond_11

    invoke-virtual {v7, v7}, Ljkn;->a(Landroid/content/Context;)Lkte;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lkte;->h(Ljava/lang/String;)V

    new-instance v3, Ljkp;

    iget-object v4, v1, Lkte;->a:Ljava/lang/Object;

    iget-object v1, v1, Lkte;->c:Ljava/lang/Object;

    move-object/from16 v16, v4

    check-cast v16, Ljks;

    move-object v15, v3

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    invoke-direct/range {v15 .. v20}, Ljkp;-><init>(Ljks;Ljava/lang/String;Lnts;Lntr;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v2, v3}, Ljke;->b(Ljkd;)V

    return-void

    :cond_11
    :try_start_f
    new-instance v0, Lnxd;

    const-string v1, "LastReturnedId less than zero"

    invoke-direct {v0, v1}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_6
    move-exception v0

    move-object v1, v0

    throw v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lnxd;

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_12
    throw v0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lnxd;

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_13
    new-instance v1, Lnxd;

    invoke-direct {v1, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lnyz;->a()Lnxd;

    move-result-object v0

    throw v0

    :catch_a
    move-exception v0

    iget-boolean v1, v0, Lnxd;->a:Z

    if-eqz v1, :cond_14

    new-instance v1, Lnxd;

    invoke-direct {v1, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object v0, v1

    :cond_14
    throw v0
    :try_end_f
    .catch Lnxd; {:try_start_f .. :try_end_f} :catch_b

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Lnxd;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lnxd;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v8, v0}, Ljke;->a(ILjava/lang/String;)V

    return-void

    :catch_c
    move-exception v0

    const-string v0, "Error parsing Any proto from resumptionPoint"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v8, v0}, Ljke;->a(ILjava/lang/String;)V

    return-void

    :cond_15
    :try_start_10
    new-instance v0, Lnxd;

    const-string v1, "End date before start date"

    invoke-direct {v0, v1}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Lnxd;

    const-string v1, "Invalid end date nanos"

    invoke-direct {v0, v1}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Lnxd;

    const-string v1, "End date less than zero"

    invoke-direct {v0, v1}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Lnxd;

    const-string v1, "Invalid start date nanos"

    invoke-direct {v0, v1}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Lnxd;

    const-string v1, "Start date less than zero"

    invoke-direct {v0, v1}, Lnxd;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_d
    move-exception v0

    move-object v1, v0

    throw v1

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lnxd;

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_1a
    throw v0

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lnxd;

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnxd;

    throw v0

    :cond_1b
    new-instance v1, Lnxd;

    invoke-direct {v1, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Lnyz;->a()Lnxd;

    move-result-object v0

    throw v0

    :catch_11
    move-exception v0

    iget-boolean v1, v0, Lnxd;->a:Z

    if-eqz v1, :cond_1c

    new-instance v1, Lnxd;

    invoke-direct {v1, v0}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object v0, v1

    :cond_1c
    throw v0
    :try_end_10
    .catch Lnxd; {:try_start_10 .. :try_end_10} :catch_12

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Lnxd;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error parsing SelectionCriteria proto: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v8, v0}, Ljke;->a(ILjava/lang/String;)V

    return-void

    :catch_13
    move-exception v0

    const-string v0, "Error parsing Any proto from criteria"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v8, v0}, Ljke;->a(ILjava/lang/String;)V

    return-void

    :cond_1d
    :try_start_11
    iget v0, v9, Lntg;->c:I

    if-lez v0, :cond_1e

    const/4 v1, 0x1

    goto :goto_b

    :cond_1e
    const/4 v1, 0x0

    :goto_b
    const-string v3, "min_client_sql_version must be set to a positive value"

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    const-string v1, "FedSqlQueryHandler version %s does not satisfy min_client_sql_version: %s"

    const/4 v3, 0x2

    if-gt v0, v3, :cond_29

    iget-object v0, v9, Lntg;->a:Lnth;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_c

    :cond_1f
    const/4 v0, 0x0

    :goto_c
    const-string v1, "client_query must be set."

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, v9, Lntg;->a:Lnth;

    if-nez v0, :cond_20

    sget-object v0, Lnth;->d:Lnth;

    :cond_20
    iget v1, v0, Lnth;->a:I

    const/4 v3, 0x3

    packed-switch v1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_d

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_d

    :pswitch_1
    const/4 v1, 0x2

    :goto_d
    if-nez v1, :cond_21

    const/4 v1, 0x0

    goto :goto_e

    :cond_21
    if-ne v1, v3, :cond_22

    const/4 v1, 0x1

    goto :goto_e

    :cond_22
    const/4 v1, 0x0

    :goto_e
    const-string v3, "SQLite is the only currently supported client_query.sql_dialect"

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v1, v0, Lnth;->b:Lntf;

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    goto :goto_f

    :cond_23
    const/4 v1, 0x0

    :goto_f
    const-string v3, "client_query.database_schema must be set"

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v1, v0, Lnth;->b:Lntf;

    if-nez v1, :cond_24

    sget-object v1, Lntf;->b:Lntf;

    :cond_24
    iget-object v1, v1, Lntf;->a:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-ne v1, v10, :cond_25

    const/4 v1, 0x1

    goto :goto_10

    :cond_25
    const/4 v1, 0x0

    :goto_10
    const-string v3, "client_query.database_schema.table must contain exactly one table."

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v1, v0, Lnth;->b:Lntf;

    if-nez v1, :cond_26

    sget-object v1, Lntf;->b:Lntf;

    :cond_26
    iget-object v1, v1, Lntf;->a:Lnxa;

    invoke-interface {v1, v11}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnti;

    iget-object v3, v1, Lnti;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v10

    const-string v5, "client_query_database_schema_table[0].name must be set."

    invoke-static {v3, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v3, v1, Lnti;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v10

    const-string v5, "client_query.database_schema.table[0].anonymization_userid_column_name must be set"

    invoke-static {v3, v5}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v1, v1, Lnti;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v10

    const-string v3, "client_query.database_schema.table[0].create_table_sql must be set"

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, v0, Lnth;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v10

    const-string v1, "client_query.raw_sql must be set."

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_14

    sget-object v0, Lnto;->b:Lloi;

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v3, v9, Lntg;->a:Lnth;

    if-nez v3, :cond_27

    sget-object v3, Lnth;->d:Lnth;

    :cond_27
    iget-object v3, v3, Lnth;->c:Ljava/lang/String;

    aput-object v3, v1, v11

    const-string v3, "Handling SQL query: %s"

    invoke-virtual {v0, v3, v1}, Lloi;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v9, Lntg;->b:Lnvi;

    if-nez v0, :cond_28

    sget-object v0, Lnvi;->c:Lnvi;

    :cond_28
    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v3

    new-instance v5, Lntj;

    invoke-direct {v5, v8, v7, v9, v2}, Lntj;-><init>(Lnto;Landroid/content/Context;Lntg;Ljke;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Ljkg;->c(Ljava/lang/String;[B[BLjke;Lntt;)V

    return-void

    :cond_29
    :try_start_12
    new-instance v3, Ljava/lang/IllegalStateException;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {v1, v5}, Llkj;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_14

    :catch_14
    move-exception v0

    goto :goto_11

    :catch_15
    move-exception v0

    goto :goto_11

    :catch_16
    move-exception v0

    :goto_11
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v2, v1, v0}, Ljke;->a(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Ljkf;->onCreate()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lnto;

    invoke-direct {v1, v0}, Lnto;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Ljkn;->a:Lnto;

    return-void
.end method
