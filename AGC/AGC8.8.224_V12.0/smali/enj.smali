.class public final synthetic Lenj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lenm;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lenl;

.field public final synthetic d:Leea;

.field public final synthetic e:Lnph;


# direct methods
.method public synthetic constructor <init>(Lenm;Ljava/util/List;Lenl;Leea;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lenj;->a:Lenm;

    iput-object p2, p0, Lenj;->b:Ljava/util/List;

    iput-object p3, p0, Lenj;->c:Lenl;

    iput-object p4, p0, Lenj;->d:Leea;

    iput-object p5, p0, Lenj;->e:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lenj;->a:Lenm;

    iget-object v0, v1, Lenj;->b:Ljava/util/List;

    iget-object v3, v1, Lenj;->c:Lenl;

    iget-object v4, v1, Lenj;->d:Leea;

    iget-object v5, v1, Lenj;->e:Lnph;

    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ldog; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v7, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgmp;

    iget-object v9, v3, Lenl;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    sget-object v9, Lnbk;->a:Lnbc;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ldog; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v9, v2, Lenm;->i:Ljava/util/Map;

    iget-object v10, v3, Lenl;->a:Leea;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v0, Lenm;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v6, Lnbk;->a:Lnbc;

    const-string v8, "KeplerController"

    invoke-interface {v0, v6, v8}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v6, 0x66d

    invoke-interface {v0, v6}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v6, "Stop processing since shot id: %d already removed"

    iget-object v8, v3, Lenl;->a:Leea;

    invoke-virtual {v8}, Leea;->a()I

    move-result v8

    invoke-interface {v0, v6, v8}, Lnah;->p(Ljava/lang/String;I)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_2
    invoke-virtual {v5, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-object v9, v2, Lenm;->m:Lcvr;

    iget-object v10, v4, Leea;->v:Lgkr;

    iget-object v10, v10, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v10}, Lgxl;->h()Lgxy;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object v9

    iget-object v10, v2, Lenm;->e:Lkbc;

    const-string v11, "KeplerController#processKeplerShot"

    invoke-interface {v10, v11}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object v10

    new-instance v11, Lenk;

    invoke-direct {v11, v2, v3, v10, v6}, Lenk;-><init>(Lenm;Lenl;Lkbf;I)V

    invoke-virtual {v9, v11}, Leeb;->b(Lecp;)V

    sget-object v9, Lmpx;->a:Lmpx;

    iget v10, v3, Lenl;->k:I

    if-lez v10, :cond_2

    iget-object v9, v3, Lenl;->g:Lnph;

    invoke-virtual {v9}, Lnph;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/googlex/gcam/AwbInfo;

    invoke-static {v9}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v9

    iget-object v10, v3, Lenl;->h:Lnph;

    invoke-virtual {v10}, Lnph;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lecc;

    invoke-static {v10}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v10

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto :goto_3

    :cond_2
    move-object/from16 v18, v9

    move-object/from16 v19, v18

    :goto_3
    iget-object v9, v2, Lenm;->k:Lgxb;

    iget v10, v8, Lgmp;->r:I

    const-string v11, "%s is an illegal frame count. (Must be > 0"

    const/4 v15, 0x1

    if-lez v10, :cond_3

    const/4 v12, 0x1

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    :goto_4
    invoke-static {v12, v11, v10}, Lmoz;->h(ZLjava/lang/String;I)V

    const-string v11, "%s is an illegal size factor. (Must be > 0"

    const/high16 v12, 0x3e800000    # 0.25f

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v15, v11, v13}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    iget-object v11, v9, Lgxb;->b:Ljava/lang/Object;

    check-cast v11, Lgdd;

    invoke-virtual {v11}, Lgdd;->b()Lkaf;

    move-result-object v11

    const/16 v13, 0x25

    invoke-static {v13, v11}, Llho;->D(ILkaf;)J

    move-result-wide v13

    int-to-long v10, v10

    mul-long v13, v13, v10

    long-to-float v10, v13

    mul-float v10, v10, v12

    iget-object v9, v9, Lgxb;->a:Ljava/lang/Object;

    float-to-long v10, v10

    check-cast v9, Lkna;

    invoke-virtual {v9, v10, v11}, Lkna;->c(J)Lnou;

    move-result-object v9

    invoke-interface {v9}, Lnou;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkmy;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Leym;

    const/4 v11, 0x2

    invoke-direct {v10, v9, v11}, Leym;-><init>(Lkmy;I)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ldog; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v9, v2, Lenm;->c:Logd;

    invoke-interface {v9}, Logd;->get()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lgjh;

    invoke-virtual {v8}, Lgmp;->f()Ljava/util/List;

    move-result-object v12

    iget-object v13, v8, Lgmp;->t:Lgkr;

    iget-object v9, v8, Lgmp;->l:Lnph;

    invoke-virtual {v9}, Lnph;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v14

    iget-object v9, v8, Lgmp;->n:Lkou;

    iget-object v6, v8, Lgmp;->s:Lebb;

    iget-object v15, v8, Lgmp;->o:Lcom/google/googlex/gcam/BurstSpec;

    move-object/from16 v21, v0

    iget v0, v3, Lenl;->k:I

    const/16 v16, 0x1

    add-int/lit8 v20, v0, 0x1

    move-object v0, v15

    const/16 v22, 0x1

    move-object v15, v9

    move-object/from16 v16, v6

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v20}, Lgjh;->b(Ljava/util/List;Lgkr;ILkou;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lmqp;Lmqp;I)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ldog; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v8}, Lgmp;->g()V

    iget-object v0, v3, Lenl;->j:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ldog; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    iget v0, v3, Lenl;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v3, Lenl;->k:I

    iget-object v0, v3, Lenl;->i:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ldog; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v0, v21

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    const/4 v6, 0x1

    goto/16 :goto_b

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    :goto_5
    const/4 v6, 0x1

    goto :goto_a

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    :goto_6
    :try_start_8
    invoke-interface {v10}, Lkad;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_7
    :try_start_9
    invoke-virtual {v8}, Lgmp;->g()V

    throw v0
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ldog; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_2
    move-exception v0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :cond_4
    iget v0, v3, Lenl;->k:I

    iget v6, v3, Lenl;->c:I

    if-lt v0, v6, :cond_0

    iget-object v0, v3, Lenl;->b:Lgmp;

    invoke-virtual {v0}, Lgmp;->g()V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ldog; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move v6, v7

    goto :goto_b

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    goto :goto_8

    :catch_8
    move-exception v0

    goto :goto_8

    :catch_9
    move-exception v0

    :goto_8
    move v6, v7

    goto :goto_a

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    goto :goto_b

    :catch_a
    move-exception v0

    goto :goto_9

    :catch_b
    move-exception v0

    goto :goto_9

    :catch_c
    move-exception v0

    goto :goto_9

    :catch_d
    move-exception v0

    :goto_9
    const/4 v6, 0x0

    :goto_a
    :try_start_c
    instance-of v7, v0, Ljava/lang/InterruptedException;

    if-eqz v7, :cond_5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    :cond_5
    sget-object v7, Lenm;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->b()Lnaz;

    move-result-object v7

    sget-object v8, Lnbk;->a:Lnbc;

    const-string v9, "KeplerController"

    invoke-interface {v7, v8, v9}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v7

    check-cast v7, Lnah;

    invoke-interface {v7, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v7, 0x66a

    invoke-interface {v0, v7}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v7, "Error processing shot id %s"

    invoke-virtual {v4}, Leea;->a()I

    move-result v4

    invoke-interface {v0, v7, v4}, Lnah;->p(Ljava/lang/String;I)V

    iget-object v0, v3, Lenl;->e:Lnph;

    new-instance v4, Ldog;

    const-string v7, "Kepler processing failed!"

    invoke-direct {v4, v7}, Ldog;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lnph;->a(Ljava/lang/Throwable;)Z

    invoke-virtual {v2, v3}, Lenm;->b(Lenl;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    :goto_b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v5, v2}, Lnph;->e(Ljava/lang/Object;)Z

    goto :goto_d

    :goto_c
    throw v0

    :goto_d
    goto :goto_c
.end method
