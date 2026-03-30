.class public final Lppv;
.super Lppt;
.source "PG"


# instance fields
.field public final f:Loyr;

.field public final g:Loyo;

.field private h:Loyd;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lppt;-><init>(J)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2, v0, p1}, Loyr;-><init>(Ljava/lang/Object;Loyo;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lppv;->f:Loyr;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1}, Loyo;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lppv;->g:Loyo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x14

    nop

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

    :goto_b
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    new-instance p1, Loyo;

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

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_8

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p2, Loyr;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method


# virtual methods
.method public final d()V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lppt;->e:Z

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    iget-wide v1, p0, Lppt;->b:J

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_2

    nop

    nop

    iget-object v1, p0, Lppt;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    const-wide/16 v2, 0x0

    nop

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lpps;

    nop

    iget-wide v4, v4, Lpps;->b:J

    nop

    nop

    add-long/2addr v2, v4

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    iget-wide v4, p0, Lppt;->d:J

    nop

    nop

    nop

    add-long v1, v4, v2

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-wide v1, p0, Lppt;->d:J

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    iget-object p0, p0, Lppv;->f:Loyr;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lppt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()Loyd;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lppv;->h:Loyd;

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Lppv;->f:Loyr;

    nop

    nop

    nop

    nop

    new-instance v1, Lpht;

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lpht;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lppv;->h:Loyd;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lppv;->h:Loyd;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_9
    const v0, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
