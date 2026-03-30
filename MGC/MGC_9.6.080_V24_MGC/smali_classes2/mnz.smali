.class final Lmnz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmqa;


# instance fields
.field final synthetic a:Lmqa;

.field final synthetic b:Lmob;


# direct methods
.method public constructor <init>(Lmob;Lmqa;)V
    .locals 0

    goto/32 :goto_2

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

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lmnz;->a:Lmqa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmnz;->b:Lmob;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(JJ)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-long/2addr p1, p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p3, p3, Lmob;->i:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    const v0, 0xf

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    iget-object p3, p0, Lmnz;->b:Lmob;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Lmob;->g:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lmnz;->b:Lmob;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmnz;->b:Lmob;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lmob;->b()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lmnz;->b:Lmob;

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

    nop

    :goto_14
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lmob;->a()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    div-long v0, p1, v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    nop

    nop

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
.end method

.method public final b(JJ)V
    .locals 8

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Lmop;->a:Lmoq;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    move-object v2, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_4
    monitor-enter p1

    nop

    :try_start_0
    iget-object p0, p0, Lmnz;->b:Lmob;

    nop

    nop

    nop

    iget-object p2, p0, Lmob;->m:Lmqh;

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lmob;->n:Lmqc;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p0}, Lmqh;->b(Lmqc;)V

    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmnz;->b:Lmob;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    invoke-direct/range {v2 .. v7}, Lmpq;-><init>(Lmpw;JFI)V

    goto/32 :goto_19

    nop

    nop

    :goto_8
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lmpq;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lmnz;->a:Lmqa;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Lmop;

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

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_f
    iget-object p3, v0, Lmoq;->D:Lmpw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    iget-object p1, p1, Lmob;->j:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_17

    nop

    nop

    :goto_13
    iget-object p1, p0, Lmnz;->b:Lmob;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p3, p3, Lmob;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    long-to-float v6, p3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p3, p0, Lmnz;->b:Lmob;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    const v1, 0x17

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p3, p3, Lmpw;->k:Lowu;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    div-long v4, p1, v0

    nop

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

    nop

    :goto_1d
    move-object v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lmob;->a()J

    move-result-wide v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
