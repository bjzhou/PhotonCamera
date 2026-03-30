.class public final Lkot;
.super Lpuq;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public c:J

.field public d:J

.field private final e:Ljava/util/TreeMap;

.field private f:J

.field private final g:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lkot;->g:Ljava/util/Set;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lkot;->b:Ljava/util/concurrent/locks/Condition;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/TreeMap;

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

    :goto_c
    iput-object v0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    const v1, 0x1f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iput-wide v0, p0, Lkot;->c:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    iput-wide v0, p0, Lkot;->d:J

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Lkot;->e:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v0, -0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iput-wide v0, p0, Lkot;->f:J

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

    :goto_1a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop
.end method


# virtual methods
.method public final j()J
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    :goto_1
    iget-object p0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-wide v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_d
    const v1, 0x8

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lkot;->c:J

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final k()J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

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

    :goto_1
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p0, Lkot;->f:J

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
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

    :goto_b
    return-wide v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final l(Lpgi;)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_e

    nop

    nop

    :goto_6
    iget-object v0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-wide v0, p1, Lpgi;->d:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lkot;->c:J

    nop

    nop

    nop

    cmp-long v2, v2, v0

    nop

    if-gez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lkot;->c:J

    nop

    nop

    nop

    nop

    iget-wide v0, p1, Lpgi;->c:J

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lkot;->d:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p1, Lpgi;->b:J

    nop

    iput-wide v0, p0, Lkot;->f:J

    nop

    nop

    iget-object p1, p0, Lkot;->b:Ljava/util/concurrent/locks/Condition;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V

    :goto_a
    iget-object p1, p0, Lkot;->e:Ljava/util/TreeMap;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lkot;->e:Ljava/util/TreeMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lkot;->c:J

    nop

    nop

    nop

    nop

    nop

    cmp-long p1, v0, v2

    nop

    nop

    nop

    if-ltz p1, :cond_0

    nop

    nop

    iget-object p1, p0, Lkot;->e:Ljava/util/TreeMap;

    nop

    nop

    invoke-virtual {p1}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p1, p0, Lkot;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lkos;

    nop

    nop

    nop

    iget-wide v1, p0, Lkot;->c:J

    nop

    nop

    iget-wide v3, v0, Lkos;->a:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, v0, Lkos;->b:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    rem-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    cmp-long v1, v1, v3

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    goto :goto_b

    nop

    :cond_1
    iget-object p1, v0, Lkos;->c:Ljava/lang/Runnable;

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    throw p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    :goto_e
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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    :goto_10
    iget-object p0, p0, Lkot;->a:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop
.end method
