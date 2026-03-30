.class final Lsus;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/Runnable;

.field final synthetic b:Lsut;


# direct methods
.method public constructor <init>(Lsut;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lsus;->b:Lsut;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 11

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    :try_start_1
    iget-object v3, p0, Lsus;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iput-object v0, p0, Lsus;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_4
    monitor-exit v3

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    goto/16 :goto_1a

    nop

    :catch_0
    move-exception v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_b
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    :try_start_7
    iget-object v3, p0, Lsus;->b:Lsut;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lsut;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    monitor-enter v3

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_18

    nop

    nop

    :goto_f
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    goto :goto_c

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    goto/32 :goto_1d

    nop

    :goto_13
    iget-object v1, p0, Lsus;->b:Lsut;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    :try_start_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :goto_16
    throw v0

    nop
    :try_end_8
    .catch Ljava/lang/Error; {:try_start_8 .. :try_end_8} :catch_1

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_17
    monitor-enter v1

    nop

    nop

    :try_start_9
    iget-object p0, p0, Lsus;->b:Lsut;

    nop

    nop

    nop

    nop

    iput v2, p0, Lsut;->d:I

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_18
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_5
    :try_start_a
    iget-object v0, p0, Lsus;->b:Lsut;

    nop

    nop

    iget v4, v0, Lsut;->d:I

    nop

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    nop

    if-ne v4, v5, :cond_6

    nop

    monitor-exit v3

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/32 :goto_0

    nop

    nop

    :goto_19
    move-object v9, v3

    nop

    nop

    :try_start_b
    sget-object v3, Lsut;->a:Lsuh;

    nop

    nop

    invoke-virtual {v3}, Lsuh;->a()Ljava/util/logging/Logger;

    move-result-object v4

    nop

    nop

    nop

    nop

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->yilQXzpc:Ljava/lang/String;

    nop

    nop

    nop

    const-string v7, "workOnQueue"

    nop

    iget-object v3, p0, Lsus;->a:Ljava/lang/Runnable;

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while executing runnable "

    nop

    nop

    nop

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    invoke-virtual/range {v4 .. v9}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    iput-object v0, p0, Lsus;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/16 :goto_4

    nop

    :goto_1a
    iput-object v0, p0, Lsus;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_d
    monitor-exit v3

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v0

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :cond_6
    :try_start_f
    iget-wide v6, v0, Lsut;->c:J

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x1

    nop

    nop

    nop

    add-long/2addr v6, v8

    nop

    nop

    nop

    nop

    iput-wide v6, v0, Lsut;->c:J

    nop

    nop

    nop

    nop

    iput v5, v0, Lsut;->d:I

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lsus;->b:Lsut;

    nop

    nop

    nop

    iget-object v0, v0, Lsut;->b:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Runnable;

    nop

    iput-object v0, p0, Lsus;->a:Ljava/lang/Runnable;

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    iget-object v0, p0, Lsus;->b:Lsut;

    nop

    iput v2, v0, Lsut;->d:I

    nop

    nop

    nop

    monitor-exit v3

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    iget-object v1, v1, Lsut;->b:Ljava/util/Deque;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    or-int/2addr v1, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "null"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "SequentialExecutorWorker{state="

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lsus;->a:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    const v0, 0x16

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget p0, p0, Lsut;->d:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    const-string p0, "IDLE"

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lsus;->b:Lsut;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_e
    invoke-static {p0, v0, v1}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    goto :goto_b

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p0, v0, :cond_2

    nop

    goto/32 :goto_27

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, p0, v1}, La;->bk(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string p0, "QUEUED"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "}"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1d
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_22
    const-string p0, "SequentialExecutorWorker{running="

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string p0, "QUEUING"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_b

    nop

    nop

    :goto_27
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    if-ne p0, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_29
    const-string p0, "RUNNING"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne p0, v0, :cond_5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
