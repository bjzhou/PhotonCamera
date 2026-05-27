.class public final synthetic Lhoo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhos;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lhps;


# direct methods
.method public synthetic constructor <init>(Lhos;Ljava/util/List;Lhps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhoo;->a:Lhos;

    iput-object p2, p0, Lhoo;->b:Ljava/util/List;

    iput-object p3, p0, Lhoo;->c:Lhps;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v1, p0

    iget-object v0, v1, Lhoo;->a:Lhos;

    iget-object v2, v1, Lhoo;->b:Ljava/util/List;

    iget-object v3, v1, Lhoo;->c:Lhps;

    iget-object v4, v0, Lhos;->q:Ljava/lang/Object;

    monitor-enter v4

    const/4 v6, 0x0

    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget-object v9, v0, Lhos;->f:Lcvf;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Lhpx;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v7, v9, Lcvf;->c:Ljava/util/concurrent/Executor;

    new-instance v14, Ldcf;

    const/4 v13, 0x1

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Ldcf;-><init>(Lcvf;Lhpx;JI)V

    invoke-interface {v7, v14}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lhos;->q:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lhos;->j:Ljvk;

    sget-object v7, Lhnw;->e:Lhnw;

    invoke-virtual {v2, v7}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v2, v0, Lhos;->p:Ljuh;

    iget-object v7, v0, Lhos;->C:Lhpg;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lhma;

    const/16 v9, 0x13

    invoke-direct {v8, v7, v9}, Lhma;-><init>(Lhpg;I)V

    invoke-virtual {v2, v8}, Ljuh;->c(Ljava/lang/Runnable;)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    iget-object v2, v0, Lhos;->p:Ljuh;

    new-instance v6, Lhon;

    const/16 v7, 0xa

    invoke-direct {v6, v0, v7}, Lhon;-><init>(Lhos;I)V

    invoke-virtual {v2, v6}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lhos;->n:Ldhi;

    sget-object v6, Ldil;->a:Ldhj;

    invoke-interface {v2}, Ldhi;->c()V

    iget-object v7, v0, Lhos;->F:Lfbz;

    iget-object v2, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    :try_start_3
    iget-object v6, v3, Lhps;->b:Ljava/lang/String;

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    :try_start_4
    iget-object v8, v0, Lhos;->K:Lklv;

    iget-object v0, v0, Lhos;->r:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lglm;

    invoke-interface {v0}, Lglm;->c()Lnjm;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;

    move-object v9, v0

    :goto_1
    iget-object v2, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    :try_start_5
    iget-object v10, v3, Lhps;->h:Lnlc;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    iget-object v2, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    iget-wide v11, v3, Lhps;->j:J

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    iget-object v2, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :try_start_9
    iget-wide v13, v3, Lhps;->k:J

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    iget-object v2, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    :try_start_b
    iget-boolean v15, v3, Lhps;->i:Z

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-boolean v2, v3, Lhps;->d:Z

    iget-object v6, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    :try_start_d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lnlc;->values()[Lnlc;

    move-result-object v1

    move/from16 v17, v2

    array-length v2, v1

    move/from16 v18, v15

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v2, :cond_3

    move/from16 v19, v2

    aget-object v2, v1, v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    invoke-virtual {v3, v2}, Lhps;->a(Lnlc;)Lhpt;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v20, v1

    :try_start_f
    iget-object v1, v3, Lhps;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v3, Lhps;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v5, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v20, v1

    :goto_3
    :try_start_10
    invoke-virtual {v2}, Lnlc;->name()Ljava/lang/String;

    :goto_4
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v19

    move-object/from16 v1, v20

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object v1

    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    iget-object v2, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :try_start_12
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lnlc;->values()[Lnlc;

    move-result-object v6

    array-length v15, v6

    move-object/from16 v19, v1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v15, :cond_5

    move/from16 v20, v15

    aget-object v15, v6, v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    invoke-virtual {v3, v15}, Lhps;->a(Lnlc;)Lhpt;

    move-result-object v0
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-object/from16 v21, v6

    :try_start_14
    iget-object v6, v3, Lhps;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-wide/from16 v22, v13

    :try_start_15
    iget-object v13, v3, Lhps;->f:Ljava/util/HashMap;

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    iget v0, v3, Lhps;->c:I
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-wide/from16 v24, v11

    int-to-long v11, v0

    :try_start_16
    div-long/2addr v13, v11

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catch_2
    move-exception v0

    move-wide/from16 v24, v11

    goto :goto_7

    :cond_4
    move-wide/from16 v24, v11

    move-wide/from16 v22, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_3
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :catch_3
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v21, v6

    :goto_6
    move-wide/from16 v24, v11

    move-wide/from16 v22, v13

    :goto_7
    :try_start_17
    invoke-virtual {v15}, Lnlc;->name()Ljava/lang/String;

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move/from16 v15, v20

    move-object/from16 v6, v21

    move-wide/from16 v13, v22

    move-wide/from16 v11, v24

    goto :goto_5

    :cond_5
    move-wide/from16 v24, v11

    move-wide/from16 v22, v13

    invoke-static {v5}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object v1

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    iget-object v2, v3, Lhps;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    :try_start_19
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lnlc;->values()[Lnlc;

    move-result-object v6

    array-length v11, v6

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v11, :cond_7

    aget-object v13, v6, v12
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :try_start_1a
    invoke-virtual {v3, v13}, Lhps;->a(Lnlc;)Lhpt;

    move-result-object v0

    iget-object v14, v3, Lhps;->g:Ljava/util/HashMap;

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v15, v3, Lhps;->g:Ljava/util/HashMap;

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-object/from16 v20, v1

    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget v14, v3, Lhps;->c:I

    int-to-long v14, v14

    div-long/2addr v0, v14

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v5, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_6
    move-object/from16 v20, v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_6
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :catch_6
    move-exception v0

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v20, v1

    :goto_a
    :try_start_1c
    invoke-virtual {v13}, Lnlc;->name()Ljava/lang/String;

    :goto_b
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v20

    goto :goto_9

    :cond_7
    move-object/from16 v20, v1

    invoke-static {v5}, Lmwa;->m(Ljava/util/Map;)Lmwa;

    move-result-object v0

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    move-wide/from16 v11, v24

    move-wide/from16 v13, v22

    move/from16 v15, v18

    move/from16 v16, v17

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v0

    :try_start_1d
    invoke-interface/range {v7 .. v19}, Lfbz;->T(Lklv;Lmqp;Lnlc;JJZZLmwa;Lmwa;Lmwa;)V

    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    return-void

    :catchall_0
    move-exception v0

    :try_start_1e
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :catchall_1
    move-exception v0

    :try_start_20
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :try_start_21
    throw v0
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_9

    :catchall_2
    move-exception v0

    :try_start_22
    monitor-exit v6
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    :try_start_23
    throw v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    :catchall_3
    move-exception v0

    :try_start_24
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    :try_start_25
    throw v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    :catchall_4
    move-exception v0

    :try_start_26
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_4

    :try_start_27
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_9

    :catchall_5
    move-exception v0

    :try_start_28
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_5

    :try_start_29
    throw v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_9

    :catchall_6
    move-exception v0

    :try_start_2a
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_6

    :try_start_2b
    throw v0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_9

    :catchall_7
    move-exception v0

    :try_start_2c
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_7

    :try_start_2d
    throw v0
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_9

    :catchall_8
    move-exception v0

    :try_start_2e
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_8

    :try_start_2f
    throw v0

    :catchall_9
    move-exception v0

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_9

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method
