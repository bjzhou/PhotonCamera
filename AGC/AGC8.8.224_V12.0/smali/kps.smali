.class public final synthetic Lkps;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lkpr;

.field public final synthetic c:Llhe;

.field public final synthetic d:Llij;


# direct methods
.method public synthetic constructor <init>(Llij;JLkpr;Llhe;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkps;->d:Llij;

    iput-wide p2, p0, Lkps;->a:J

    iput-object p4, p0, Lkps;->b:Lkpr;

    iput-object p5, p0, Lkps;->c:Llhe;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v2, v1, Lkps;->d:Llij;

    iget-wide v3, v1, Lkps;->a:J

    iget-object v5, v1, Lkps;->b:Lkpr;

    iget-object v0, v1, Lkps;->c:Llhe;

    iget-object v6, v2, Llij;->g:Ljava/lang/Object;

    iget-object v7, v5, Lkpr;->a:Lkpm;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Publishing "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lkaq;->f(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    const-wide/32 v9, 0xf4240

    :try_start_0
    iget-object v12, v2, Llij;->c:Ljava/lang/Object;

    iget-object v13, v5, Lkpr;->a:Lkpm;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "publish-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v12, v2, Llij;->f:Ljava/lang/Object;

    iget-object v13, v5, Lkpr;->i:Lkqo;

    invoke-interface {v12, v13}, Lkqt;->b(Lkqo;)Lkqs;

    move-result-object v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v13, v5, Lkpr;->f:Lmwn;

    invoke-virtual {v13}, Lmwn;->cz()Lnac;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkpj;

    invoke-virtual {v2, v12, v0, v5, v14}, Llij;->m(Lkqs;Llhe;Lkpr;Lkpj;)V

    goto :goto_0

    :cond_0
    iget-object v13, v5, Lkpr;->e:Lmwn;

    invoke-virtual {v13}, Lmwn;->cz()Lnac;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkpj;

    invoke-virtual {v2, v12, v0, v5, v14}, Llij;->m(Lkqs;Llhe;Lkpr;Lkpj;)V

    goto :goto_1

    :cond_1
    iget-object v0, v5, Lkpr;->g:Lmwn;

    invoke-virtual {v0}, Lmwn;->cz()Lnac;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lkqq;

    iget-object v14, v2, Llij;->g:Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleting cached file: "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v8}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v12, v13}, Lkqs;->a(Lkqq;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v12}, Lkqs;->close()V

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    iget-object v8, v5, Lkpr;->a:Lkpm;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Publishing transactions for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " completed."

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, v2, Llij;->b:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lkpo;

    iget-object v8, v8, Lkpo;->e:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    move-object v11, v0

    check-cast v11, Lkpo;

    iget-object v11, v11, Lkpo;->b:Ljava/lang/Object;

    check-cast v11, Lkqa;

    iget-boolean v11, v11, Lkqa;->q:Z

    if-eqz v11, :cond_3

    check-cast v0, Lkpo;

    invoke-virtual {v0, v5}, Lkpo;->a(Lkpr;)V

    monitor-exit v8

    goto :goto_3

    :cond_3
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v12, v0

    check-cast v12, Lkpo;

    iget-object v12, v12, Lkpo;->a:Ljava/lang/Object;

    iget-object v13, v5, Lkpr;->a:Lkpm;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-object v11, v0

    check-cast v11, Lkpo;

    iget-object v11, v11, Lkpo;->b:Ljava/lang/Object;

    check-cast v0, Lkpo;

    invoke-virtual {v0, v5}, Lkpo;->a(Lkpr;)V

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_3
    iget-object v0, v2, Llij;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    sub-long v6, v11, v6

    sub-long/2addr v11, v3

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    iget-object v3, v5, Lkpr;->a:Lkpm;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lkpr;->e:Lmwn;

    invoke-virtual {v4}, Lmwn;->size()I

    move-result v4

    div-long/2addr v6, v9

    div-long/2addr v11, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Published "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file(s)) in "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms ("

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms total)"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkaq;->f(Ljava/lang/String;)V

    iget v0, v5, Lkpr;->j:I

    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v3, v5, Lkpr;->h:Lmvv;

    move-object v0, v3

    check-cast v0, Lmyu;

    iget v4, v0, Lmyu;->c:I

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v4, :cond_5

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpk;

    :try_start_4
    invoke-interface {v0}, Lkpk;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v5, v0

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    const-string v6, "Error notifying a listener of onAbandoned"

    invoke-interface {v0, v6, v5}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :pswitch_1
    iget-object v3, v5, Lkpr;->h:Lmvv;

    move-object v0, v3

    check-cast v0, Lmyu;

    iget v4, v0, Lmyu;->c:I

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v4, :cond_5

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpk;

    :try_start_5
    invoke-interface {v0}, Lkpk;->c()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v5, v0

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    const-string v6, "Error notifying a listener of onPublished"

    invoke-interface {v0, v6, v5}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_4
    const/4 v2, 0x0

    throw v2

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_8
    invoke-interface {v12}, Lkqs;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v16, 0x0

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v11, v0

    :try_start_9
    const-class v0, Ljava/lang/Throwable;

    const-string v12, "addSuppressed"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    const-class v15, Ljava/lang/Throwable;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/16 v16, 0x0

    :try_start_a
    aput-object v15, v14, v16

    invoke-virtual {v0, v12, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v11, v12, v16

    invoke-virtual {v0, v8, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    const/16 v16, 0x0

    :goto_8
    :try_start_b
    throw v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_9

    :catchall_6
    move-exception v0

    const/16 v16, 0x0

    :goto_9
    :try_start_c
    iget-object v8, v2, Llij;->g:Ljava/lang/Object;

    iget-object v11, v5, Lkpr;->a:Lkpm;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v5, Lkpr;->e:Lmwn;

    invoke-virtual {v12}, Lmwn;->size()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error publishing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " file(s))"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    iget-object v0, v2, Llij;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    sub-long v6, v11, v6

    sub-long/2addr v11, v3

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    iget-object v3, v5, Lkpr;->a:Lkpm;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lkpr;->e:Lmwn;

    invoke-virtual {v4}, Lmwn;->size()I

    move-result v4

    div-long/2addr v6, v9

    div-long/2addr v11, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Published "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file(s)) in "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms total)"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v3, v5, Lkpr;->h:Lmvv;

    move-object v0, v3

    check-cast v0, Lmyu;

    iget v4, v0, Lmyu;->c:I

    const/4 v11, 0x0

    :goto_a
    if-ge v11, v4, :cond_5

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpk;

    :try_start_d
    move-object v5, v8

    check-cast v5, Lmqt;

    iget-object v5, v5, Lmqt;->a:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    invoke-interface {v0, v5}, Lkpk;->b(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    iget-object v5, v2, Llij;->g:Ljava/lang/Object;

    const-string v6, "Error notifying a listener of onError"

    invoke-interface {v5, v6, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_5
    :goto_c
    return-void

    :catchall_8
    move-exception v0

    move-object v8, v0

    iget-object v0, v2, Llij;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    sub-long v6, v11, v6

    sub-long/2addr v11, v3

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    iget-object v3, v5, Lkpr;->a:Lkpm;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v5, Lkpr;->e:Lmwn;

    invoke-virtual {v4}, Lmwn;->size()I

    move-result v4

    div-long/2addr v6, v9

    div-long/2addr v11, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Published "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " file(s)) in "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms ("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms total)"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lkaq;->f(Ljava/lang/String;)V

    iget v0, v5, Lkpr;->j:I

    add-int/lit8 v3, v0, -0x1

    if-eqz v0, :cond_8

    packed-switch v3, :pswitch_data_1

    :cond_6
    goto :goto_11

    :pswitch_2
    iget-object v3, v5, Lkpr;->h:Lmvv;

    move-object v0, v3

    check-cast v0, Lmyu;

    iget v4, v0, Lmyu;->c:I

    const/4 v11, 0x0

    :goto_d
    if-ge v11, v4, :cond_6

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpk;

    :try_start_e
    invoke-interface {v0}, Lkpk;->a()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object v5, v0

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    const-string v6, "Error notifying a listener of onAbandoned"

    invoke-interface {v0, v6, v5}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :pswitch_3
    iget-object v3, v5, Lkpr;->h:Lmvv;

    move-object v0, v3

    check-cast v0, Lmyu;

    iget v4, v0, Lmyu;->c:I

    const/4 v11, 0x0

    :goto_f
    if-ge v11, v4, :cond_7

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpk;

    :try_start_f
    invoke-interface {v0}, Lkpk;->c()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_10

    :catchall_a
    move-exception v0

    move-object v5, v0

    iget-object v0, v2, Llij;->g:Ljava/lang/Object;

    const-string v6, "Error notifying a listener of onPublished"

    invoke-interface {v0, v6, v5}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_7
    :goto_11
    throw v8

    :cond_8
    const/4 v2, 0x0

    goto :goto_13

    :goto_12
    throw v2

    :goto_13
    goto :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
