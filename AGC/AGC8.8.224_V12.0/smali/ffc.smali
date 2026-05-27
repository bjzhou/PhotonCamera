.class public final synthetic Lffc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lffp;

.field public final synthetic b:Lgxy;

.field public final synthetic c:Lnph;

.field public final synthetic d:J

.field public final synthetic e:Lgxl;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:I

.field public final synthetic i:Lnou;

.field public final synthetic j:Lkad;


# direct methods
.method public synthetic constructor <init>(Lffp;Lgxy;Lnph;JLgxl;ZZILnou;Lkad;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffc;->a:Lffp;

    iput-object p2, p0, Lffc;->b:Lgxy;

    iput-object p3, p0, Lffc;->c:Lnph;

    iput-wide p4, p0, Lffc;->d:J

    iput-object p6, p0, Lffc;->e:Lgxl;

    iput-boolean p7, p0, Lffc;->f:Z

    iput-boolean p8, p0, Lffc;->g:Z

    iput p9, p0, Lffc;->h:I

    iput-object p10, p0, Lffc;->i:Lnou;

    iput-object p11, p0, Lffc;->j:Lkad;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 43

    move-object/from16 v1, p0

    iget-object v0, v1, Lffc;->a:Lffp;

    iget-object v10, v1, Lffc;->b:Lgxy;

    iget-object v15, v1, Lffc;->c:Lnph;

    iget-wide v11, v1, Lffc;->d:J

    iget-object v13, v1, Lffc;->e:Lgxl;

    iget-boolean v2, v1, Lffc;->f:Z

    iget-boolean v14, v1, Lffc;->g:Z

    iget v3, v1, Lffc;->h:I

    iget-object v9, v1, Lffc;->i:Lnou;

    iget-object v8, v1, Lffc;->j:Lkad;

    :try_start_0
    iget-object v4, v0, Lffp;->j:Lfhg;

    invoke-interface {v4}, Lfhg;->c()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v4, v0, Lffp;->r:Leah;

    invoke-virtual {v4}, Leah;->d()V

    iget-object v7, v0, Lffp;->e:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-object v4, v0, Lffp;->u:Ljava/util/List;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lflb;->b()V

    iget-object v4, v0, Lffp;->f:Lfey;

    iget v6, v4, Lfey;->e:I

    iget-object v4, v0, Lffp;->m:Lfex;

    invoke-virtual {v4, v13, v2}, Lfex;->a(Lgxl;Z)Llij;

    move-result-object v4

    iget-object v2, v0, Lffp;->w:Lmbe;

    iget-object v5, v4, Llij;->f:Ljava/lang/Object;

    move-object/from16 v16, v5

    check-cast v16, Lmqp;

    invoke-virtual/range {v16 .. v16}, Lmqp;->g()Z

    move-result v16

    if-eqz v16, :cond_0

    check-cast v5, Lmqp;

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v28, v16

    goto :goto_0

    :cond_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v11, v12, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v16

    move-wide/from16 v28, v16

    :goto_0
    invoke-interface {v13}, Lgxl;->i()Lgya;

    move-result-object v1

    iget-object v5, v0, Lffp;->v:Ldne;

    move-object/from16 v30, v4

    iget-object v4, v5, Ldne;->b:Ljava/lang/Object;

    sget-object v16, Ldhv;->a:Ldhk;

    invoke-interface {v4}, Ldhi;->c()V

    iget-object v4, v5, Ldne;->b:Ljava/lang/Object;

    invoke-interface {v4}, Ldhi;->c()V

    iget-object v4, v5, Ldne;->b:Ljava/lang/Object;

    invoke-interface {v4}, Ldhi;->c()V

    sget-object v4, Lgya;->s:Lgya;

    if-ne v1, v4, :cond_1

    iget-object v1, v2, Lmbe;->c:Ljava/lang/Object;

    iget-object v2, v2, Lmbe;->d:Ljava/lang/Object;

    check-cast v2, Lfys;

    invoke-virtual {v2}, Lfys;->d()Lfkn;

    move-result-object v2

    check-cast v1, Lgxb;

    invoke-virtual {v1, v2}, Lgxb;->i(Lfkn;)Lfkn;

    move-result-object v1

    move/from16 v36, v3

    move-object/from16 v31, v8

    move-object/from16 v35, v9

    move-wide/from16 v33, v11

    move-object/from16 v32, v15

    goto :goto_2

    :cond_1
    sget-object v4, Lgya;->o:Lgya;

    new-instance v5, Lfkp;

    move-object/from16 v31, v8

    iget-object v8, v2, Lmbe;->f:Ljava/lang/Object;

    move-object/from16 v32, v15

    iget-object v15, v2, Lmbe;->b:Ljava/lang/Object;

    move-wide/from16 v33, v11

    iget-object v11, v2, Lmbe;->a:Ljava/lang/Object;

    iget-object v12, v2, Lmbe;->g:Ljava/lang/Object;

    move-object/from16 v35, v9

    iget-object v9, v2, Lmbe;->h:Ljava/lang/Object;

    move/from16 v36, v3

    iget-object v3, v2, Lmbe;->i:Ljava/lang/Object;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v25

    move-object/from16 v23, v12

    check-cast v23, Ldne;

    move-object/from16 v17, v8

    check-cast v17, Ldxl;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v5

    move-wide/from16 v18, v28

    move-object/from16 v20, v15

    move/from16 v21, v6

    move-object/from16 v22, v11

    move-object/from16 v24, v9

    invoke-direct/range {v16 .. v27}, Lfkp;-><init>(Ldxl;JLjava/util/List;ILjava/util/concurrent/Executor;Ldne;Ldhi;Lmqp;[B[B)V

    iget-object v3, v2, Lmbe;->h:Ljava/lang/Object;

    invoke-interface {v3}, Ldhi;->c()V

    if-ne v1, v4, :cond_2

    iget-object v1, v2, Lmbe;->e:Ljava/lang/Object;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v8, v28

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v3

    check-cast v1, Lfkk;

    invoke-virtual {v1, v3, v4, v5}, Lfkk;->a(JLfkn;)Lfkn;

    move-result-object v5

    goto :goto_1

    :cond_2
    :goto_1
    iget-object v1, v2, Lmbe;->c:Ljava/lang/Object;

    check-cast v1, Lgxb;

    invoke-virtual {v1, v5}, Lgxb;->i(Lfkn;)Lfkn;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Lfkn;->a()J

    move-result-wide v11

    iget-object v2, v0, Lffp;->s:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v15

    new-instance v9, Llhm;

    const/4 v2, 0x0

    invoke-direct {v9, v2}, Llhm;-><init>([B)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v26

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v27

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    iget-object v4, v0, Lffp;->g:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfsn;

    invoke-interface {v4, v10}, Lfsn;->a(Lgxy;)Lnou;

    move-result-object v4

    goto :goto_3

    :cond_3
    sget-object v4, Lmpx;->a:Lmpx;

    invoke-static {v4}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v4

    :goto_3
    new-instance v5, Lffd;

    invoke-direct {v5, v3, v4}, Lffd;-><init>(Lnph;Lnou;)V

    sget-object v8, Lnnv;->a:Lnnv;

    invoke-interface {v4, v5, v8}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    new-instance v8, Lfff;

    invoke-direct {v8, v3, v4}, Lfff;-><init>(Lnph;Lnou;)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-static {v5, v8, v4}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v8

    if-nez v14, :cond_4

    sget-object v4, Lmpx;->a:Lmpx;

    invoke-virtual {v8, v4}, Lnph;->e(Ljava/lang/Object;)Z

    :cond_4
    iget-object v4, v0, Lffp;->h:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v14, :cond_5

    invoke-interface {v13}, Lgxl;->f()Lgxn;

    move-result-object v2

    move/from16 v29, v6

    iget-object v6, v2, Lgxn;->a:Lkph;

    move-object/from16 v16, v2

    const-string v2, "LS"

    invoke-interface {v6, v2}, Lkph;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v6, v16

    goto :goto_4

    :cond_5
    move/from16 v29, v6

    :try_start_2
    invoke-interface {v13}, Lgxl;->g()Lgxr;

    move-result-object v2

    invoke-virtual {v2}, Lgxr;->i()Lgxn;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v6, v2

    :goto_4
    :try_start_3
    iget-object v2, v6, Lgxn;->a:Lkph;

    invoke-interface {v2}, Lkph;->e()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v37, v6

    :try_start_4
    iget-object v6, v0, Lffp;->d:Lfgh;

    move-object/from16 v38, v1

    iget-object v1, v0, Lffp;->p:Lgvb;

    move-object/from16 v39, v9

    iget-object v9, v0, Lffp;->q:Lkli;

    invoke-interface {v9}, Lkli;->k()Lklv;

    move-result-object v9

    invoke-interface {v1, v9}, Lgvb;->h(Lklv;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lffp;->p:Lgvb;

    invoke-static/range {v36 .. v36}, Lkab;->b(I)Lkab;

    move-result-object v9

    invoke-interface {v1, v9}, Lgvb;->g(Lkab;)Z

    move-result v1

    if-nez v1, :cond_6

    move/from16 v1, v36

    add-int/lit16 v9, v1, 0xb4

    rem-int/lit16 v9, v9, 0x168

    goto :goto_5

    :cond_6
    move/from16 v1, v36

    move v9, v1

    :goto_5
    move-wide/from16 v40, v11

    iget-object v11, v0, Lffp;->c:Ljava/util/concurrent/Executor;

    invoke-static {v11}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object v11

    invoke-interface {v6, v2, v9, v8, v11}, Lfgh;->a(Ljava/io/FileOutputStream;ILnou;Ljava/util/concurrent/Executor;)Lkxv;

    move-result-object v2

    invoke-interface {v13}, Lgxl;->h()Lgxy;

    move-result-object v6

    new-instance v9, Lfgn;

    new-instance v11, Lfif;

    new-instance v12, Lfhf;

    invoke-virtual {v6}, Lgxy;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v36, v8

    iget-object v8, v0, Lffp;->k:Ldhi;

    invoke-direct {v12, v6, v8, v2}, Lfhf;-><init>(Ljava/lang/String;Ldhi;Lkxv;)V

    new-instance v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v2, v13}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lgxl;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v18, v2

    invoke-direct/range {v16 .. v21}, Lfif;-><init>(Lkxv;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;[B[B[B)V

    invoke-virtual {v0, v14}, Lffp;->e(Z)Z

    move-result v18

    iget-boolean v2, v0, Lffp;->l:Z

    iget-object v6, v0, Lffp;->b:Ljava/util/concurrent/Executor;

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v19, v27

    move-object/from16 v20, v26

    move-object/from16 v21, v35

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move/from16 v24, v2

    move-object/from16 v25, v6

    invoke-direct/range {v16 .. v25}, Lfgn;-><init>(Lkxv;ZLnou;Lnph;Lnou;Lnou;Lnou;ZLjava/util/concurrent/Executor;)V

    if-nez v14, :cond_8

    iget-boolean v2, v0, Lffp;->l:Z

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    new-instance v2, Lfho;

    invoke-direct {v2, v9}, Lfho;-><init>(Lkxv;)V

    move-object v9, v2

    goto :goto_6

    :cond_8
    :goto_6
    new-instance v11, Lfhu;

    move-object v2, v15

    check-cast v2, Lfht;

    invoke-direct {v11, v2, v9}, Lfhu;-><init>(Lfht;Lkxv;)V

    invoke-interface {v11}, Lkxv;->a()Lkxy;

    move-result-object v12

    invoke-interface {v11}, Lkxv;->a()Lkxy;

    move-result-object v2

    iget-object v3, v0, Lffp;->k:Ldhi;

    sget-object v6, Ldhv;->e:Ldhj;

    invoke-interface {v3, v6}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v14, :cond_9

    new-instance v3, Lfhx;

    invoke-direct {v3, v2, v1}, Lfhx;-><init>(Lkxy;I)V

    iget-object v2, v3, Lfhx;->a:Lnph;

    new-instance v6, Lfcz;

    const/16 v8, 0x10

    invoke-direct {v6, v3, v8}, Lfcz;-><init>(Lfhx;I)V

    sget-object v8, Lnnv;->a:Lnnv;

    invoke-virtual {v2, v6, v8}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v2, v3, Lfhx;->b:Lnph;

    invoke-virtual {v5, v2}, Lnph;->f(Lnou;)Z

    move-object v9, v3

    goto :goto_7

    :cond_9
    sget-object v3, Lmpx;->a:Lmpx;

    invoke-virtual {v5, v3}, Lnph;->e(Ljava/lang/Object;)Z

    move-object v9, v2

    :goto_7
    if-eqz v4, :cond_a

    invoke-interface {v11}, Lkxv;->a()Lkxy;

    move-result-object v2

    move-object v8, v2

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    :goto_8
    new-instance v6, Lfgw;

    invoke-interface {v11}, Lkxv;->a()Lkxy;

    move-result-object v2

    invoke-direct {v6, v2}, Lfgw;-><init>(Lkxy;)V

    invoke-interface {v11}, Lkxv;->d()V

    iget-object v2, v0, Lffp;->i:Lfst;

    invoke-static {v1}, Lkab;->b(I)Lkab;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v10

    move-object/from16 v24, v30

    move-wide/from16 v4, v40

    move-object/from16 v18, v11

    move/from16 v16, v29

    move-object/from16 v17, v37

    move-object v11, v6

    move-object v6, v1

    move-object v1, v7

    move v7, v14

    move-object/from16 v21, v13

    move-object/from16 v19, v31

    move-object/from16 v20, v36

    move-object v13, v8

    move-object/from16 v8, v39

    move-object/from16 v25, v35

    move-object/from16 v28, v39

    :try_start_5
    invoke-interface/range {v2 .. v9}, Lfst;->l(Lgxy;JLkab;ZLlhm;Lkxy;)Lfss;

    move-result-object v29

    invoke-interface/range {v19 .. v19}, Lkad;->close()V

    iget-object v2, v0, Lffp;->j:Lfhg;

    new-instance v4, Lva;

    invoke-direct {v4, v12, v13, v11}, Lva;-><init>(Lkxy;Lkxy;Lkxy;)V

    const-wide/16 v5, 0x0

    move-wide/from16 v7, v40

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-object v3, v10

    move v7, v14

    invoke-interface/range {v2 .. v7}, Lfhg;->g(Lgxy;Lva;JZ)Lfkm;

    move-result-object v30

    new-instance v13, Lffo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-object v8, v0, Lffp;->i:Lfst;

    iget-object v2, v0, Lffp;->y:Lbkb;

    invoke-virtual {v2}, Lbkb;->H()Lmqp;

    move-result-object v31

    move-object v7, v15

    check-cast v7, Lfht;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v2, v13

    move-object v3, v10

    move-object/from16 v4, v21

    move-object/from16 v5, v30

    move-object/from16 v6, v17

    move-object v15, v8

    move-wide/from16 v8, v33

    move-object/from16 v10, v27

    move-object/from16 v27, v18

    move-object/from16 v33, v0

    move-object v0, v13

    move/from16 v13, v16

    move/from16 v34, v14

    move-object v14, v15

    move-object/from16 v42, v32

    move-object/from16 v15, v28

    move-object/from16 v16, v25

    move-object/from16 v17, v27

    move/from16 v18, v34

    move-object/from16 v19, v26

    move-object/from16 v21, v31

    invoke-direct/range {v2 .. v23}, Lffo;-><init>(Lgxy;Lgxl;Lfkm;Lgxn;Lfht;JLnph;JILfst;Llhm;Lnou;Lkxv;ZLnou;Lnph;Lmqp;[B[B)V

    const/4 v2, 0x1

    move/from16 v9, v34

    if-eq v2, v9, :cond_b

    const/4 v2, 0x3

    goto :goto_9

    :cond_b
    const/4 v2, 0x5

    :goto_9
    iput v2, v0, Lffo;->u:I

    new-instance v13, Lffg;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, v13

    move-object/from16 v3, v33

    move-object/from16 v4, v29

    move-object/from16 v5, v30

    move-object/from16 v6, v24

    move-object v7, v0

    move-object/from16 v8, v27

    invoke-direct/range {v2 .. v12}, Lffg;-><init>(Lffp;Lfss;Lfkm;Llij;Lffo;Lkxv;Z[B[B[B)V

    move-object/from16 v2, v38

    invoke-interface {v2, v13}, Lfkn;->d(Lfkm;)V

    invoke-interface/range {v27 .. v27}, Lkxv;->b()Lnou;

    move-result-object v2

    sget-object v3, Lchy;->r:Lchy;

    move-object/from16 v4, v33

    iget-object v4, v4, Lffp;->b:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v3, v4}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    move-object/from16 v2, v42

    invoke-virtual {v2, v0}, Lnph;->e(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    move-object v1, v7

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    move-object v1, v7

    sget-object v2, Lffp;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x896

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Could not create output stream for encoder output since %s is canceled"

    invoke-interface {v0, v2, v10}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catch_2
    move-exception v0

    move-object v1, v7

    sget-object v2, Lffp;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x897

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Could not create cached file for encoder output since %s is canceled"

    invoke-interface {v0, v2, v10}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_a
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v2, v15

    invoke-virtual {v2, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
