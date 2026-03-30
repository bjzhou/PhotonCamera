.class public final Lllq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnrm;
.implements Llln;


# static fields
.field private static final a:Lsdb;

.field private static final b:Lj$/time/Duration;


# instance fields
.field private final c:Lllm;

.field private final d:Lllp;

.field private final e:Lfdo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    const-string v0, "llq"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lllq;->b:Lj$/time/Duration;

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

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v1, 0x1d

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    nop

    nop

    :goto_5
    sput-object v0, Lllq;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

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

    goto/32 :goto_d

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

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

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x14

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Lllp;Lfdo;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lllq;->d:Lllp;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object p1, p2, Lfdo;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lllq;->e:Lfdo;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lllm;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iput-object v0, p0, Lllq;->c:Lllm;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lllm;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_9
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lprw;)Lnrl;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

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
    const-string p1, "unsupported process(ImageProxy, ImageProxy)"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpge;Lphh;Lpge;)Lnrl;
    .locals 10

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/16 :goto_17

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    monitor-enter p1

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lllq;->d:Lllp;

    nop

    nop

    iget-object v0, v0, Lllp;->c:Lsui;

    nop

    invoke-interface {v0}, Lsui;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    sget-object p0, Lllq;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    sget-object p2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    const-string p3, "MilkViewfinderEffect"

    nop

    nop

    invoke-interface {p0, p2, p3}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const/16 p2, 0xf1b

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    const-string p2, "Pipeline is not ready. Skip processing."

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->s(Ljava/lang/String;)V

    sget-object p0, Lnrl;->b:Lnrl;

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    :cond_1
    invoke-interface {p3, p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object p2

    nop

    nop

    if-nez p2, :cond_2

    nop

    nop

    sget-object p0, Lllq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    sget-object p2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    const-string p3, "MilkViewfinderEffect"

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2, p3}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 p2, 0xf1a

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    const-string p2, "Output image is null."

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->s(Ljava/lang/String;)V

    sget-object p0, Lnrl;->b:Lnrl;

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    move-object v4, v0

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

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    iget-object p3, p0, Lllq;->c:Lllm;

    nop

    nop

    nop

    invoke-interface {p2}, Lprw;->d()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    sget-object v2, Lllq;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lj$/time/Duration;->toNanos()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p3, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v5, p3, Lllm;->a:Ljava/util/PriorityQueue;

    nop

    nop

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lrsu;

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lrsu;->a:Ljava/lang/Object;

    nop

    check-cast v5, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    nop

    nop

    cmp-long v5, v5, v0

    nop

    nop

    if-gez v5, :cond_3

    nop

    nop

    iget-object v5, p3, Lllm;->a:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Lrsu;

    nop

    nop

    nop

    invoke-virtual {p3, v5}, Lllm;->a(Lrsu;)V

    goto :goto_6

    nop

    nop

    nop

    :cond_3
    iget-object v5, p3, Lllm;->a:Ljava/util/PriorityQueue;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lrsu;

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_0

    nop

    nop

    nop

    iget-object v6, v5, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    cmp-long v6, v6, v0

    nop

    if-nez v6, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p3, Lllm;->a:Ljava/util/PriorityQueue;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lrsu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, v0}, Lllm;->a(Lrsu;)V

    iget-object v0, v5, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lpci;

    nop
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p3, p3, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljtn;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    if-gtz v6, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    :try_start_5
    iget-object v5, p3, Lllm;->d:Ljava/util/concurrent/locks/Condition;

    nop

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p3, Lllm;->b:Lrsu;

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    iget-object v3, v5, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr v6, v0

    nop

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    nop

    nop

    iget-object v3, v2, Lrsu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    sub-long/2addr v8, v0

    nop

    nop

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    cmp-long v0, v6, v0

    nop

    nop

    nop

    nop

    nop

    if-gez v0, :cond_6

    nop

    nop

    nop

    nop

    iget-object v0, v5, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lpci;

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_6
    iget-object v0, v2, Lrsu;->b:Ljava/lang/Object;

    nop

    check-cast v0, Lpci;

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_7
    if-eqz v5, :cond_8

    nop

    iget-object v0, v5, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lpci;

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_8
    if-eqz v2, :cond_a

    nop

    nop

    nop

    iget-object v0, v2, Lrsu;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Lpci;

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    if-eqz v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_6
    sget-object p0, Lnrl;->b:Lnrl;

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-interface {p2}, Lprw;->close()V

    monitor-exit p1

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    cmp-long v6, v2, v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto :goto_13

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p3

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw p0

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_9
    invoke-interface {p2}, Lprw;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_d

    nop

    :cond_a
    :goto_15
    :try_start_a
    iget-object p3, p3, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_17

    nop

    :catchall_2
    move-exception p0

    nop

    iget-object p3, p3, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    invoke-virtual {p3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0

    nop

    :catch_0
    iget-object p3, p3, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v4, Ljtn;

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lllq;->d:Lllp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_b
    goto/32 :goto_f

    nop

    :goto_1a
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw p0

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

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

    nop

    nop

    :goto_1d
    return-object p0

    nop

    nop

    nop

    :catchall_5
    move-exception p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :goto_1f
    :try_start_c
    iget-object p0, p0, Lllq;->d:Lllp;

    nop

    nop

    nop

    iget-object p3, v4, Ljtn;->b:Ljava/lang/Object;

    nop

    nop

    iget-object v0, v4, Ljtn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v4, Ljtn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p3, v0, v1, p2}, Lllp;->a(Lprw;Lpro;Lprw;Lprw;)Z

    move-result p0

    nop

    nop

    if-eqz p0, :cond_c

    nop

    nop

    sget-object p0, Lnrl;->a:Lnrl;

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    :cond_c
    sget-object p0, Lnrl;->b:Lnrl;

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_20
    :try_start_d
    invoke-virtual {v4}, Ljtn;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    invoke-interface {p2}, Lprw;->close()V

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop
.end method

.method public final c()Lnrn;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lnrn;->b:Lnrn;

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
.end method

.method public final close()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    :goto_1
    iget-object v0, p0, Lllq;->e:Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

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

    nop

    :goto_4
    sget-object v0, Lsed;->a:Lsdr;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lllm;->close()V

    goto/32 :goto_8

    nop

    nop

    :goto_6
    iget-object v0, p0, Lllq;->c:Lllm;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lllq;->d:Lllp;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lllp;->close()V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lllq;->d:Lllp;

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final synthetic d()Lqht;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic e()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lnzk;->m(Lnrm;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final f(Loel;)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0}, Lprw;->close()V

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lllq;->c:Lllm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    iget-object p1, p1, Loel;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p1, p0, Lllm;->a:Ljava/util/PriorityQueue;

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v1, Lrsu;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0, v4}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lllm;->d:Ljava/util/concurrent/locks/Condition;

    nop

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v4, v0, v1, p1, v5}, Ljtn;-><init>(Lprw;Lprw;Lpro;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v4, Ljtn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_d
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    :goto_19
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Lprw;->close()V

    :goto_1b
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lllm;->c:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1d
    throw p1

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Loel;->j()Lprw;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    invoke-interface {v0}, Lprw;->d()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Loel;->g()Lprw;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final r()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method public final synthetic t(Lqiu;Lqjs;)Lnrl;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lnzk;->n()Lnrl;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop
.end method
