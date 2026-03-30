.class public final Lsut;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Lsuh;


# instance fields
.field public final b:Ljava/util/Deque;

.field public c:J

.field public d:I

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lsus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

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

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lsuh;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lsut;->a:Lsuh;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-class v1, Lsut;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    const v1, 0x9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lsuh;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    goto/32 :goto_8

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lsut;->d:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsut;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    new-instance v0, Lsus;

    nop

    goto/32 :goto_9

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

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Lsus;-><init>(Lsut;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-wide v0, p0, Lsut;->c:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lsut;->f:Lsus;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lsut;->b:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lsut;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :cond_0
    :goto_2
    :try_start_0
    iget-object p0, p0, Lsut;->b:Ljava/util/Deque;

    nop

    invoke-interface {p0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

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

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-wide v5, p0, Lsut;->c:J

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v5, v3

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    iget v1, p0, Lsut;->d:I

    nop

    nop

    nop

    nop

    nop

    if-ne v1, p1, :cond_1

    nop

    nop

    nop

    iput v2, p0, Lsut;->d:I

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lsut;->b:Ljava/util/Deque;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    iget-object v2, p0, Lsut;->b:Ljava/util/Deque;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_2
    iget v3, p0, Lsut;->d:I

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    if-eq v3, v5, :cond_2

    nop

    nop

    nop

    if-ne v3, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object p0, p0, Lsut;->b:Ljava/util/Deque;

    nop

    invoke-interface {p0, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_3

    nop

    nop

    move v4, v5

    nop

    nop

    :cond_3
    instance-of p0, v0, Ljava/util/concurrent/RejectedExecutionException;

    nop

    nop

    if-eqz p0, :cond_4

    nop

    nop

    if-nez v4, :cond_4

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_4
    throw v0

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lsut;->d:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    if-ne v0, p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_6

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

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

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    monitor-enter v0

    nop

    nop

    nop

    :try_start_3
    iget v1, p0, Lsut;->d:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    if-ne v1, v2, :cond_7

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    :cond_7
    iget-wide v3, p0, Lsut;->c:J

    nop

    nop

    nop

    nop

    new-instance v1, Lsur;

    nop

    nop

    invoke-direct {v1, p1}, Lsur;-><init>(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lsut;->b:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    iput p1, p0, Lsut;->d:I

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lsut;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    iget-object v5, p0, Lsut;->f:Lsus;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lsut;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, "{"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const v0, 0x8

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

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

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, "SequentialExecutor@"

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

    :goto_16
    const-string p0, "}"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method
