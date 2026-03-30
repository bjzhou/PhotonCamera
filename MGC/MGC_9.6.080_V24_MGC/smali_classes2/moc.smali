.class public final synthetic Lmoc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmoi;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lmoi;IZZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lmoc;->b:I

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

    nop

    :goto_3
    iput-boolean p3, p0, Lmoc;->c:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iput-boolean p4, p0, Lmoc;->d:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lmoc;->a:Lmoi;

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
.end method


# virtual methods
.method public final run()V
    .locals 30

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-long v5, v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v5, 0xd

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, v1, Lmoc;->d:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lmns;->c()V

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v4, v0, Loza;->e:Loyz;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Loyz;->a:Loyz;

    nop

    if-ne v4, v5, :cond_0

    nop

    nop

    nop

    move v8, v10

    nop

    nop

    :cond_0
    const-string v6, "%s is expected but we get %s"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v6, v5, v4}, Lrrf;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Loyz;->b:Loyz;

    nop

    nop

    nop

    nop

    iput-object v4, v0, Loza;->e:Loyz;

    nop

    nop

    iget-object v4, v0, Loza;->a:Lpak;

    nop

    nop

    nop

    iget-object v5, v0, Loza;->f:Lpah;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpak;->h(Lpah;)Lsui;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lgng;

    nop

    nop

    nop

    nop

    const/16 v6, 0xf

    nop

    nop

    invoke-direct {v5, v0, v6}, Lgng;-><init>(Ljava/lang/Object;I)V

    iget-object v0, v0, Loza;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_23

    nop

    nop

    nop

    :catch_0
    :try_start_2
    sget-object v11, Lsps;->c:Lsps;

    nop

    nop

    nop

    nop

    iput-object v11, v6, Lmqh;->m:Lsps;

    nop

    nop

    nop

    nop

    sget-object v11, Lmqh;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v11}, Lscs;->c()Lsdo;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    const/16 v12, 0x1227

    nop

    nop

    invoke-interface {v11, v12}, Lscz;->M(I)Lsdo;

    move-result-object v11

    nop

    nop

    nop

    nop

    check-cast v11, Lscz;

    nop

    nop

    nop

    const-string v12, "Unsupported speed up ratio: %s"

    nop

    nop

    invoke-virtual {v0}, Lmqc;->name()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v11, v12, v0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_10
    monitor-exit v9

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v5, Lmob;->n:Lmqc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Lmqh;->c(Lmqc;)V

    monitor-exit v7

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v4

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_b

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_14
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_15
    const v1, 0x17

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    iget-object v4, v3, Lmoi;->m:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, v3, Lmoi;->ac:Loza;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    iget-object v3, v1, Lmoc;->a:Lmoi;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_e

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_5
    iget-object v5, v3, Lmoi;->A:Lmob;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v3, Lmoi;->ac:Loza;

    nop

    nop

    iget-object v6, v3, Lmoi;->W:Lmqh;

    nop

    nop

    nop

    nop

    iget-object v7, v3, Lmoi;->E:Ljava/util/ArrayList;

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lmqg;

    nop

    iget-object v9, v3, Lmoi;->ae:Ljis;

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Ljis;->b:Ltur;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ltur;->a()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lkkb;

    nop

    nop

    nop

    iget-object v10, v5, Lmob;->j:Ljava/lang/Object;

    nop

    monitor-enter v10

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v3, Lmoi;->M:Lmpy;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_10

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v3, Lmoi;->z:Lmns;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    :goto_22
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_23
    :try_start_6
    monitor-exit v9

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    monitor-exit v12

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw v0

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_b
    monitor-exit v10

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    monitor-exit v4

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/32 :goto_36

    nop

    nop

    :goto_24
    iget-object v2, v0, Loza;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v3, Lmoi;->F:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_27
    invoke-direct {v4, v3, v5}, Lmnq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_d
    iput-object v11, v5, Lmob;->m:Lmqh;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v10

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    iget-object v10, v5, Lmob;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    const-wide/16 v11, 0x0

    nop

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v10, v5, Lmob;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v10, v5, Lmob;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v10, v5, Lmob;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v10, v5, Lmob;->h:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v10, v5, Lmob;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v10, v5, Lmob;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v10, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v10, v5, Lmob;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v10, v5, Lmob;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    invoke-virtual {v10, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v9, v5, Lmob;->t:Lkkb;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v10, v7, Lmqg;->k:Z

    nop

    nop

    nop

    nop

    iput-boolean v10, v5, Lmob;->q:Z

    nop

    nop

    nop

    nop

    iget-object v14, v7, Lmqg;->a:Loze;

    nop

    nop

    nop

    iget v14, v14, Loze;->k:I

    nop

    nop

    nop

    nop

    iput v14, v5, Lmob;->r:I

    nop

    nop

    nop

    iput v2, v5, Lmob;->s:I

    nop

    nop

    nop

    const/4 v15, 0x2

    nop

    nop

    nop

    if-eqz v10, :cond_b

    nop

    nop

    iget-object v0, v5, Lmob;->o:Lmqa;

    nop

    nop

    nop

    nop

    nop

    iget v10, v9, Lkkb;->x:I

    nop

    nop

    nop

    nop

    if-eq v10, v15, :cond_5

    nop

    sget-object v0, Lkkb;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v7, 0xbbf

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v7}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const-string v7, "State check failed. Recording already started."

    nop

    nop

    nop

    invoke-interface {v0, v7}, Lscz;->s(Ljava/lang/String;)V

    move v10, v13

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_5
    iput-object v0, v9, Lkkb;->r:Lmqa;

    nop

    nop

    nop

    iput-object v6, v9, Lkkb;->s:Lmqh;

    nop

    nop

    iget-object v0, v7, Lmqg;->b:Lozg;

    nop

    nop

    nop

    invoke-virtual {v0}, Lozg;->d()Z

    move-result v0

    nop

    nop

    nop

    if-eq v13, v0, :cond_6

    nop

    nop

    nop

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    nop

    goto :goto_2a

    nop

    nop

    nop

    :cond_6
    const-wide/high16 v15, 0x3fd0000000000000L    # 0.25

    nop

    :goto_2a
    int-to-double v11, v14

    nop

    nop

    cmpl-double v0, v11, v15

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_7

    nop

    nop

    nop

    move v0, v13

    nop

    nop

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    :cond_7
    move v0, v8

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, v9, Lkkb;->j:Loyn;

    nop

    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    nop

    nop

    iput-wide v13, v9, Lkkb;->t:D

    nop

    nop

    iget-object v0, v9, Lkkb;->j:Loyn;

    nop

    nop

    nop

    nop

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    nop

    nop

    invoke-interface {v0, v13}, Loyn;->a(Ljava/lang/Object;)V

    iget-object v0, v9, Lkkb;->j:Loyn;

    nop

    nop

    nop

    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Double;

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    nop

    nop

    nop

    nop

    nop

    div-double/2addr v11, v13

    nop

    nop

    double-to-int v0, v11

    nop

    nop

    nop

    iput v0, v9, Lkkb;->u:I

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    iget-object v0, v7, Lmqg;->b:Lozg;

    nop

    nop

    nop

    invoke-virtual {v0}, Lozg;->d()Z

    move-result v0

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    if-eq v10, v0, :cond_8

    nop

    nop

    nop

    const v0, 0x243d580

    nop

    nop

    goto :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    const v0, 0x3dcc500

    nop

    nop

    nop

    :goto_2c
    iget-object v11, v9, Lkkb;->z:Lhdu;

    nop

    nop

    iget-object v12, v7, Lmqg;->d:Lgrl;

    nop

    nop

    nop

    invoke-interface {v12}, Lgrl;->close()V

    invoke-interface {v12}, Lgrl;->b()Lrss;

    invoke-interface {v12}, Lgrl;->b()Lrss;

    move-result-object v12

    nop

    nop

    nop

    check-cast v12, Lrsx;

    nop

    nop

    nop

    nop

    iget-object v12, v12, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v12, Llxc;

    nop

    nop

    iget-object v12, v12, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v12}, Lpsf;->e()Ljava/io/FileOutputStream;

    move-result-object v22

    nop

    iget-object v12, v7, Lmqg;->b:Lozg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Lozg;->b()Lpck;

    move-result-object v23

    nop

    nop

    iget v12, v7, Lmqg;->g:I

    nop

    nop

    nop

    nop

    invoke-static {v12}, Lpcg;->b(I)Lpcg;

    move-result-object v24

    nop

    nop

    nop

    iget-object v12, v9, Lkkb;->A:Lhif;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Lhif;->k()Z

    move-result v25

    nop

    nop

    nop

    iget-object v12, v9, Lkkb;->m:Lmqd;

    nop

    nop

    nop

    iget v12, v12, Lmqd;->e:I

    nop

    nop

    iget v13, v7, Lmqg;->l:F

    nop

    nop

    nop

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-static {v13}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v27

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v28

    nop

    nop

    nop

    iget v0, v7, Lmqg;->m:I

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v29

    nop

    nop

    new-instance v0, Ljcv;

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v11, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iget-object v14, v11, Lhdu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v11, v11, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v19, v13

    nop

    nop

    nop

    nop

    check-cast v19, Liof;

    nop

    move-object/from16 v18, v0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v20, v14

    nop

    move-object/from16 v21, v11

    nop

    nop

    move/from16 v26, v12

    nop

    nop

    invoke-direct/range {v18 .. v29}, Ljcv;-><init>(Liof;Ljqp;Ljava/util/concurrent/Executor;Ljava/io/FileOutputStream;Lpck;Lpcg;ZILrss;Lrss;Lrss;)V

    iput-object v0, v9, Lkkb;->p:Ljcv;

    nop
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    iget-object v0, v7, Lmqg;->e:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    nop

    iget-object v0, v7, Lmqg;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/location/Location;

    nop

    nop

    nop

    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    new-instance v11, Lgii;

    nop

    nop

    nop

    const-wide/16 v12, 0x0

    nop

    nop

    nop

    invoke-direct {v11, v0, v12, v13}, Lgii;-><init>(Lsui;J)V

    goto :goto_2d

    nop

    :cond_9
    invoke-static {}, Lgii;->a()Lgii;

    move-result-object v11

    nop

    :goto_2d
    move-object v14, v11

    nop

    nop

    iget-object v12, v9, Lkkb;->B:Lhwy;

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v7, Lmqg;->h:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v0, v7, Lmqg;->d:Lgrl;

    nop

    nop

    invoke-interface {v0}, Lgrl;->c()Lrss;

    move-result-object v0

    nop

    check-cast v0, Lrsx;

    nop

    nop

    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object v16, Lrsa;->a:Lrsa;

    nop

    nop

    move-object v15, v0

    nop

    nop

    check-cast v15, Llxg;

    nop

    nop

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual/range {v12 .. v17}, Lhwy;->l(Ljava/lang/String;Lgii;Llxg;Lrss;Z)Llwm;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v9, Lkkb;->q:Llwm;

    nop

    nop

    nop

    iget-object v0, v9, Lkkb;->y:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Lhnu;->x:Lhmn;

    nop

    invoke-virtual {v0, v11}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    iget-object v0, v7, Lmqg;->b:Lozg;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lozg;->c()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_a

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    goto :goto_2e

    nop

    nop

    nop

    nop

    :cond_a
    move v0, v8

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-boolean v0, v9, Lkkb;->v:Z

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    iput v7, v9, Lkkb;->x:I

    nop

    nop

    nop

    goto :goto_2f

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    sget-object v7, Lkkb;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v7}, Lscs;->b()Lsdo;

    move-result-object v7

    nop

    nop

    nop

    nop

    const-string v9, "Unable to open output stream from file."

    nop

    nop

    nop

    nop

    const/16 v11, 0xbbe

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9, v11, v7, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto :goto_2f

    nop

    nop

    nop

    :cond_b
    iget-object v9, v5, Lmob;->k:Lmnx;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v5, Lmob;->o:Lmqa;

    nop

    nop

    nop

    iget v12, v9, Lmnx;->m:I

    nop

    nop

    nop

    nop

    nop

    if-eq v12, v15, :cond_c

    nop

    nop

    sget-object v0, Lmnx;->a:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v7, 0x11c0

    nop

    nop

    nop

    invoke-interface {v0, v7}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v7, "State check failed. Recording already started."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v7}, Lscz;->s(Ljava/lang/String;)V

    :goto_2f
    const/4 v10, 0x1

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :cond_c
    const/4 v10, 0x1

    nop

    nop

    nop

    iput v10, v9, Lmnx;->m:I

    nop

    nop

    nop

    nop

    iget-object v12, v9, Lmnx;->c:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    const-wide/16 v13, 0x0

    nop

    nop

    nop

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v12, v9, Lmnx;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v12, v9, Lmnx;->b:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v13, v14}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v12, v9, Lmnx;->g:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v12

    nop

    nop

    nop

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    iput-object v0, v9, Lmnx;->n:Loza;

    nop

    nop

    nop

    nop

    sget v13, Lcom/a;->aa:I

    nop

    nop

    if-nez v13, :cond_d

    nop

    iget-object v0, v9, Lmnx;->n:Loza;

    nop

    iget-object v0, v0, Loza;->a:Lpak;

    nop

    invoke-interface {v0}, Lpak;->b()Lrss;

    move-result-object v0

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v13

    nop

    nop

    nop

    if-eqz v13, :cond_d

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/view/Surface;

    nop

    nop

    nop

    const/4 v13, 0x5

    nop

    nop

    nop

    invoke-static {v0, v13}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v0

    nop

    new-instance v13, Lpnk;

    nop

    invoke-direct {v13, v0}, Lpnk;-><init>(Landroid/media/ImageWriter;)V

    iput-object v13, v9, Lmnx;->p:Lpnk;

    nop

    nop

    :cond_d
    iget-object v0, v7, Lmqg;->a:Loze;

    nop

    iget v0, v0, Loze;->k:I

    nop

    iput v0, v9, Lmnx;->j:I

    nop

    nop

    nop

    iput-object v11, v9, Lmnx;->l:Lmqa;

    nop

    nop

    nop

    monitor-exit v12

    nop

    nop

    nop
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :goto_30
    :try_start_12
    iget-object v7, v5, Lmob;->j:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v7

    nop

    nop
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :try_start_13
    iput-object v6, v5, Lmob;->m:Lmqh;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v5, Lmob;->n:Lmqc;

    nop

    iget-object v9, v6, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter v9

    nop

    nop

    nop

    nop
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :try_start_14
    iget-object v11, v6, Lmqh;->x:Lnar;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v11, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v11, Ljava/lang/Class;

    nop

    nop

    invoke-static {v0, v11}, Lnar;->k(Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v11

    nop

    nop

    nop

    nop

    check-cast v11, Lsps;

    nop

    iput-object v11, v6, Lmqh;->m:Lsps;

    nop

    nop

    nop

    nop
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_31
    iget v2, v1, Lmoc;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_32
    iget-boolean v0, v1, Lmoc;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lmpy;->b()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, v3, Lmoi;->ae:Ljis;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_35
    new-instance v4, Lmnq;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    throw v0

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
