.class public final Lqpi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lrsk;

.field public volatile b:Z

.field private final c:Lrtk;

.field private volatile d:Ljava/lang/Process;


# direct methods
.method public constructor <init>(Lrts;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lqpi;->c:Lrtk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, v1}, Lqby;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lrtk;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    const/4 v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_9
    new-instance v0, Lqby;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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
    invoke-direct {v0, p1}, Lrtk;-><init>(Lrts;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Lqpi;->b:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lqpi;->a:Lrsk;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lqpi;->d:Ljava/lang/Process;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lqpi;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_4
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :cond_2
    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    :try_start_0
    iget-object v0, p0, Lqpi;->d:Ljava/lang/Process;

    nop

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    iput-boolean v0, p0, Lqpi;->b:Z

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    iput-object v0, p0, Lqpi;->d:Ljava/lang/Process;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lqpi;->c:Lrtk;

    nop

    nop

    nop

    nop

    iget-boolean v1, v0, Lrtk;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lrtk;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    nop

    nop

    const-wide/32 v2, 0xea60

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    if-gez v0, :cond_4

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v0, p0, Lqpi;->c:Lrtk;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrtk;->d()V

    iget-object v0, p0, Lqpi;->c:Lrtk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrtk;->e()V

    iget-object v0, p0, Lqpi;->a:Lrsk;

    nop

    invoke-interface {v0, p1}, Lrsk;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Ljava/lang/Process;

    nop

    nop

    nop

    iput-object p1, p0, Lqpi;->d:Ljava/lang/Process;

    nop

    monitor-exit p0

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_f
    goto/16 :goto_6

    nop

    nop

    :catch_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    :goto_12
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    const v0, 0x20

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
.end method
