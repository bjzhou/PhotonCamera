.class public final synthetic Lfql;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lfqp;

.field public final synthetic b:Lkeb;

.field public final synthetic c:Lkaq;

.field public final synthetic d:Lfsl;

.field public final synthetic e:Lfte;

.field public final synthetic f:Lnom;


# direct methods
.method public synthetic constructor <init>(Lfqp;Lkeb;Lkaq;Lfsl;Lfte;Lnom;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfql;->a:Lfqp;

    iput-object p2, p0, Lfql;->b:Lkeb;

    iput-object p3, p0, Lfql;->c:Lkaq;

    iput-object p4, p0, Lfql;->d:Lfsl;

    iput-object p5, p0, Lfql;->e:Lfte;

    iput-object p6, p0, Lfql;->f:Lnom;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v1, p0

    const-string v0, "Failed to initiate HDR plus shot capture."

    iget-object v13, v1, Lfql;->a:Lfqp;

    iget-object v2, v1, Lfql;->b:Lkeb;

    iget-object v14, v1, Lfql;->c:Lkaq;

    iget-object v15, v1, Lfql;->d:Lfsl;

    iget-object v12, v1, Lfql;->e:Lfte;

    iget-object v11, v1, Lfql;->f:Lnom;

    :try_start_0
    invoke-static {v2}, Lcom/google/android/apps/camera/moments/MomentsUtils;->a(Lkeb;)Lnou;

    move-result-object v3

    invoke-interface {v3}, Lnou;->get()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lkou;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-interface {v2}, Lkeb;->b()Lkeg;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v9, v3, Lkeg;->b:J

    iget-object v3, v13, Lfqp;->e:Lgue;

    invoke-virtual {v3, v2}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lgli;->e()Lkpb;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lgli;->d()Lkpb;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lklz;

    invoke-direct {v3, v9, v10}, Lklz;-><init>(J)V

    move-object v8, v3

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not get a raw image from input frame"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v15, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    new-instance v7, Lkma;

    const/4 v3, 0x1

    invoke-direct {v7, v2, v3}, Lkma;-><init>(Lkpb;I)V

    :try_start_1
    new-instance v5, Lkma;

    invoke-direct {v5, v8, v3}, Lkma;-><init>(Lkpb;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v6, Lfqm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v6

    move-object v3, v13

    move-object v4, v11

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-wide v5, v9

    move-object/from16 v22, v7

    move-object/from16 v7, v16

    move-object/from16 v23, v8

    move-object/from16 v8, v20

    move-wide/from16 v24, v9

    move-object v9, v15

    move-object/from16 v10, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v19

    :try_start_3
    invoke-direct/range {v2 .. v11}, Lfqm;-><init>(Lfqp;Lnom;JLkou;Lkma;Lfsl;[B[B)V

    new-instance v11, Lfqn;

    const/16 v19, 0x0

    const/16 v26, 0x0

    move-object v2, v11

    move-object v3, v13

    move-object/from16 v4, v18

    move-wide/from16 v5, v24

    move-object/from16 v7, v16

    move-object/from16 v8, v23

    move-object/from16 v9, v20

    move-object v10, v15

    move-object v1, v11

    move-object/from16 v11, v19

    move-object/from16 v19, v15

    move-object v15, v12

    move-object/from16 v12, v26

    invoke-direct/range {v2 .. v12}, Lfqn;-><init>(Lfqp;Lnom;JLkou;Lkpb;Lkma;Lfsl;[B[B)V

    invoke-static {}, Lgxy;->a()Lgxy;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + used internally by Moments. Not a shutter initiated shot"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v2, v13, Lfqp;->f:Lcvr;

    invoke-virtual {v2, v6}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object v2

    iget-object v3, v13, Lfqp;->c:Ldhi;

    sget-object v4, Ldhw;->a:Ldhj;

    invoke-interface {v3}, Ldhi;->d()V

    new-instance v8, Lcom/google/googlex/gcam/PostviewParams;

    invoke-direct {v8}, Lcom/google/googlex/gcam/PostviewParams;-><init>()V

    iget-object v3, v13, Lfqp;->b:Lkli;

    invoke-static {v3}, Lnsc;->g(Lkli;)Lkmf;

    move-result-object v3

    iget-object v3, v3, Lkmf;->b:Lkaf;

    iget v4, v3, Lkaf;->a:I

    iget v5, v3, Lkaf;->b:I

    const/4 v7, 0x0

    if-le v4, v5, :cond_2

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v8, v4}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    invoke-virtual {v8, v7}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v7}, Lcom/google/googlex/gcam/PostviewParams;->d(I)V

    iget v3, v3, Lkaf;->b:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v8, v3}, Lcom/google/googlex/gcam/PostviewParams;->c(I)V

    :goto_1
    iget-object v3, v13, Lfqp;->c:Ldhi;

    sget-object v4, Ldhw;->z:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v3, v18

    iget-boolean v3, v3, Lnom;->a:Z

    if-nez v3, :cond_4

    sget-object v1, Lnqz;->f:Lnqz;

    invoke-virtual {v8, v1}, Lcom/google/googlex/gcam/PostviewParams;->b(Lnqz;)V

    iget-object v1, v2, Leeb;->l:Lmwl;

    if-nez v1, :cond_3

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v1

    iput-object v1, v2, Leeb;->l:Lmwl;

    :cond_3
    iget-object v1, v2, Leeb;->l:Lmwl;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    sget-object v3, Lnqz;->b:Lnqz;

    invoke-virtual {v8, v3}, Lcom/google/googlex/gcam/PostviewParams;->b(Lnqz;)V

    iget-object v3, v2, Leeb;->j:Lmwl;

    if-nez v3, :cond_5

    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v3

    iput-object v3, v2, Leeb;->j:Lmwl;

    :cond_5
    iget-object v2, v2, Leeb;->j:Lmwl;

    invoke-virtual {v2, v1}, Lmwl;->g(Ljava/lang/Object;)V

    :goto_2
    new-instance v7, Lgkr;

    new-instance v1, Lfzx;

    invoke-direct {v1}, Lfzx;-><init>()V

    new-instance v2, Lgak;

    invoke-direct {v2}, Lgak;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v7, v15, v3, v1, v2}, Lgkr;-><init>(Lfte;Lgxl;Lfzz;Lgaa;)V

    invoke-virtual/range {v17 .. v17}, Lgli;->a()Lkfj;

    move-result-object v1

    invoke-interface {v1}, Lkfj;->c()Lkll;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, v13, Lfqp;->a:Lecd;

    sget-object v9, Lgcc;->b:Lgcc;

    move-object v5, v1

    move-object/from16 v10, v16

    invoke-interface/range {v4 .. v10}, Lecd;->E(Lkll;Lgxy;Lgkr;Lcom/google/googlex/gcam/PostviewParams;Lgcc;Lkou;)Leea;

    move-result-object v2

    const-string v3, "launched HDR+ shot"

    invoke-interface {v14, v3}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lkdf; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_6

    :try_start_5
    invoke-interface {v14, v0}, Lkaq;->i(Ljava/lang/String;)V

    new-instance v1, Lfqo;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lfqo;-><init>(Ljava/lang/Throwable;)V

    move-object/from16 v3, v19

    invoke-interface {v3, v1}, Lfsl;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    :try_start_6
    invoke-virtual/range {v20 .. v20}, Lkma;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-virtual/range {v22 .. v22}, Lkma;->l()V

    return-void

    :cond_6
    move-object/from16 v3, v19

    :try_start_7
    iget-object v0, v13, Lfqp;->a:Lecd;

    new-instance v4, Lcom/google/googlex/gcam/BurstSpec;

    invoke-direct {v4}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    invoke-interface {v0, v2, v4}, Lecd;->r(Leea;Lcom/google/googlex/gcam/BurstSpec;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Submitting payload frame "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v4, v13, Lfqp;->a:Lecd;

    const/4 v7, 0x0

    sget-object v9, Lnqg;->c:Lnqg;

    move-object v5, v2

    move-object v6, v1

    move-object/from16 v8, v16

    move-object/from16 v10, v22

    invoke-interface/range {v4 .. v10}, Lecd;->C(Leea;Lkll;ILkou;Lnqg;Lkpb;)V

    iget-object v0, v13, Lfqp;->a:Lecd;

    invoke-interface {v0, v2}, Lecd;->x(Leea;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Couldn\'t end burst payload, aborting shot."

    invoke-interface {v14, v0}, Lkaq;->d(Ljava/lang/String;)V

    iget-object v0, v13, Lfqp;->a:Lecd;

    invoke-interface {v0, v2}, Lecd;->n(Leea;)V

    new-instance v0, Lfqo;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t end burst payload"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfqo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    iget-object v0, v13, Lfqp;->a:Lecd;

    invoke-interface {v0, v2}, Lecd;->y(Leea;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Couldn\'t end capture, aborting shot."

    invoke-interface {v14, v0}, Lkaq;->d(Ljava/lang/String;)V

    iget-object v0, v13, Lfqp;->a:Lecd;

    invoke-interface {v0, v2}, Lecd;->n(Leea;)V

    new-instance v0, Lfqo;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t end capture"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfqo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    :cond_8
    invoke-virtual/range {v22 .. v22}, Lkma;->k()Lkpb;

    invoke-virtual/range {v20 .. v20}, Lkma;->k()Lkpb;

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v3, v19

    const-string v1, "Couldn\'t start ZSL capture"

    invoke-interface {v14, v1, v0}, Lkaq;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v0}, Lfsl;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v20, v5

    move-object/from16 v22, v7

    :goto_5
    move-object v1, v0

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Lkma;->l()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_9
    invoke-static {v1, v2}, Lgfp;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v22, v7

    :goto_7
    move-object v1, v0

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Lkma;->l()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-static {v1, v2}, Lgfp;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    throw v1

    :catch_3
    move-exception v0

    move-object v3, v15

    const-string v1, "metadata get interrupted"

    invoke-interface {v14, v1}, Lkaq;->d(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void

    :catch_4
    move-exception v0

    move-object v3, v15

    const-string v1, "Failed to acquire metadata from the first frame."

    invoke-interface {v14, v1}, Lkaq;->d(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lfsl;->b(Ljava/lang/Throwable;)V

    return-void
.end method
